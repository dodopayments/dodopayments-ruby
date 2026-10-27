# frozen_string_literal: true

require_relative "test_helper"

class DodopaymentsWorkloadIdentityTest < Minitest::Test
  extend Minitest::Serial
  include WebMock::API

  BASE_URL = "http://localhost"
  TOKEN_URL = "#{BASE_URL}/workload-identity/token"
  REVOKE_URL = "#{BASE_URL}/workload-identity/token/revoke"
  PROBE_URL = "#{BASE_URL}/probe"
  IDENTITY_PROVIDER_ID = "wip_test"
  SUBJECT_TOKEN = "subject-token"

  def before_all
    super
    WebMock.enable!
  end

  def setup
    super
    Thread.current.thread_variable_set(:mock_sleep, [])
  end

  def teardown
    Thread.current.thread_variable_set(:mock_sleep, nil)
    WebMock.reset!
    super
  end

  def after_all
    WebMock.disable!
    super
  end

  def token_response(access_token, expires_in: 3600)
    {
      status: 200,
      body: {
        access_token: access_token,
        issued_token_type: "urn:ietf:params:oauth:token-type:access_token",
        token_type: "Bearer",
        expires_in: expires_in,
        scope: "payments:read"
      }
    }
  end

  def new_client(provider: Dodopayments::WorkloadIdentity.static(SUBJECT_TOKEN))
    Dodopayments::Client.new(
      base_url: BASE_URL,
      workload_identity: {identity_provider_id: IDENTITY_PROVIDER_ID, provider: provider}
    )
  end

  def probe(client) = client.request(method: :get, path: "probe")

  def test_exchange_then_request_uses_access_token
    stub_request(:post, TOKEN_URL).to_return_json(token_response("access-1"))
    stub_request(:get, PROBE_URL).to_return_json(status: 200, body: {})

    probe(new_client)

    expected_body = JSON.generate(
      {
        grant_type: "urn:ietf:params:oauth:grant-type:token-exchange",
        subject_token_type: "urn:ietf:params:oauth:token-type:jwt",
        subject_token: SUBJECT_TOKEN,
        identity_provider_id: IDENTITY_PROVIDER_ID
      }
    )
    assert_requested(:post, TOKEN_URL, times: 1) do |req|
      req.body == expected_body && !req.headers.key?("Authorization")
    end
    assert_requested(:get, PROBE_URL, times: 1, headers: {"Authorization" => "Bearer access-1"})
  end

  def test_concurrent_requests_share_one_exchange
    stub_request(:post, TOKEN_URL).to_return_json(token_response("access-1"))
    stub_request(:get, PROBE_URL).to_return_json(status: 200, body: {})

    slow_provider = lambda do |_context|
      _sleep(0.2)
      SUBJECT_TOKEN
    end
    client = new_client(provider: slow_provider)

    Array.new(2) { Thread.new { probe(client) } }.each(&:join)

    assert_requested(:post, TOKEN_URL, times: 1)
    assert_requested(:get, PROBE_URL, times: 2, headers: {"Authorization" => "Bearer access-1"})
  end

  def test_refreshes_only_near_expiry
    stub_request(:post, TOKEN_URL).to_return_json(token_response("access-1", expires_in: 200))
    stub_request(:get, PROBE_URL).to_return_json(status: 200, body: {})

    client = new_client
    probe(client)
    probe(client)

    assert_requested(:post, TOKEN_URL, times: 2)

    WebMock.reset!
    stub_request(:post, TOKEN_URL).to_return_json(token_response("access-2", expires_in: 3600))
    stub_request(:get, PROBE_URL).to_return_json(status: 200, body: {})

    client = new_client
    probe(client)
    probe(client)

    assert_requested(:post, TOKEN_URL, times: 1)
    assert_requested(:get, PROBE_URL, times: 2)
  end

  def test_unauthorized_response_exchanges_and_retries_once
    stub_request(:post, TOKEN_URL)
      .to_return_json(token_response("access-1"))
      .then.to_return_json(token_response("access-2"))
    stub_request(:get, PROBE_URL).to_return_json(status: 401, body: {})

    assert_raises(Dodopayments::Errors::AuthenticationError) do
      probe(new_client)
    end

    assert_requested(:post, TOKEN_URL, times: 2)
    assert_requested(:get, PROBE_URL, times: 1, headers: {"Authorization" => "Bearer access-1"})
    assert_requested(:get, PROBE_URL, times: 1, headers: {"Authorization" => "Bearer access-2"})
  end

  def test_bearer_token_and_workload_identity_are_exclusive
    e = assert_raises(ArgumentError) do
      Dodopayments::Client.new(
        base_url: BASE_URL,
        bearer_token: "My Bearer Token",
        workload_identity: {
          identity_provider_id: IDENTITY_PROVIDER_ID,
          provider: Dodopayments::WorkloadIdentity.static(SUBJECT_TOKEN)
        }
      )
    end
    assert_match(/cannot be used together/, e.message)
  end

  def test_exchange_error_raises_status_error
    stub_request(:post, TOKEN_URL).to_return_json(
      status: 403,
      body: {error: "invalid_grant", error_description: "No mapping matches the token"}
    )
    stub_request(:get, PROBE_URL).to_return_json(status: 200, body: {})

    e = assert_raises(Dodopayments::Errors::PermissionDeniedError) do
      probe(new_client)
    end

    assert_match(/invalid_grant/, e.message)
    assert_match(/No mapping matches the token/, e.message)
    assert_requested(:post, TOKEN_URL, times: 1)
    assert_not_requested(:get, PROBE_URL)
  end

  def test_revoke_sends_token_and_clears_cache
    stub_request(:post, TOKEN_URL)
      .to_return_json(token_response("access-1"))
      .then.to_return_json(token_response("access-2"))
    stub_request(:post, REVOKE_URL).to_return(status: 204)
    stub_request(:get, PROBE_URL).to_return_json(status: 200, body: {})

    client = new_client
    probe(client)
    client.workload_identity.revoke
    probe(client)

    assert_requested(:post, REVOKE_URL, times: 1, headers: {"Authorization" => "Bearer access-1"})
    assert_requested(:post, TOKEN_URL, times: 2)
    assert_requested(:get, PROBE_URL, times: 1, headers: {"Authorization" => "Bearer access-2"})
  end
end
