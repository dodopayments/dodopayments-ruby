# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::AddonsTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response =
      @dodo_payments.addons.create(currency: :AED, name: "name", price: 0, tax_category: :digital_products)

    assert_pattern do
      response => Dodopayments::Models::AddonResponse
    end

    assert_pattern do
      response => {
        id: String,
        business_id: String,
        created_at: Time,
        currency: Dodopayments::Models::Currency,
        name: String,
        price: Integer,
        tax_category: Dodopayments::Models::TaxCategory,
        updated_at: Time,
        description: String | nil,
        image: String | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.addons.retrieve("id")

    assert_pattern do
      response => Dodopayments::Models::AddonResponse
    end

    assert_pattern do
      response => {
        id: String,
        business_id: String,
        created_at: Time,
        currency: Dodopayments::Models::Currency,
        name: String,
        price: Integer,
        tax_category: Dodopayments::Models::TaxCategory,
        updated_at: Time,
        description: String | nil,
        image: String | nil
      }
    end
  end

  def test_update
    response = @dodo_payments.addons.update("id")

    assert_pattern do
      response => Dodopayments::Models::AddonResponse
    end

    assert_pattern do
      response => {
        id: String,
        business_id: String,
        created_at: Time,
        currency: Dodopayments::Models::Currency,
        name: String,
        price: Integer,
        tax_category: Dodopayments::Models::TaxCategory,
        updated_at: Time,
        description: String | nil,
        image: String | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.addons.list

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Models::AddonResponse
    end

    assert_pattern do
      row => {
        id: String,
        business_id: String,
        created_at: Time,
        currency: Dodopayments::Models::Currency,
        name: String,
        price: Integer,
        tax_category: Dodopayments::Models::TaxCategory,
        updated_at: Time,
        description: String | nil,
        image: String | nil
      }
    end
  end

  def test_update_images
    response = @dodo_payments.addons.update_images("id")

    assert_pattern do
      response => Dodopayments::Models::AddonUpdateImagesResponse
    end

    assert_pattern do
      response => {
        image_id: String,
        url: String
      }
    end
  end
end
