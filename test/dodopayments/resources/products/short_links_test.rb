# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::Products::ShortLinksTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response = @dodo_payments.products.short_links.create("id", slug: "slug")

    assert_pattern do
      response => Dodopayments::Models::Products::ShortLinkCreateResponse
    end

    assert_pattern do
      response => {
        full_url: String,
        short_url: String
      }
    end
  end

  def test_list
    response = @dodo_payments.products.short_links.list

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Models::Products::ShortLinkListResponse
    end

    assert_pattern do
      row => {
        created_at: Time,
        full_url: String,
        product_id: String,
        short_url: String
      }
    end
  end
end
