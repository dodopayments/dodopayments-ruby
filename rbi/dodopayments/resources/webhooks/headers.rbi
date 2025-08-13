# typed: strong

module Dodopayments
  module Resources
    class Webhooks
      class Headers
        # Get a webhook by id
        sig do
          params(
            webhook_id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(Dodopayments::Models::Webhooks::HeaderRetrieveResponse)
        end
        def retrieve(webhook_id, request_options: {})
        end

        # Patch a webhook by id
        sig do
          params(
            webhook_id: String,
            headers: T::Hash[Symbol, String],
            request_options: Dodopayments::RequestOptions::OrHash
          ).void
        end
        def update(
          webhook_id,
          # Object of header-value pair to update or add
          headers:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Dodopayments::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
