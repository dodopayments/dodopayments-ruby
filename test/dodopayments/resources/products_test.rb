# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::ProductsTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response =
      @dodo_payments.products.create(
        price: {currency: :AED, discount: 0, price: 0, purchasing_power_parity: true, type: :one_time_price},
        tax_category: :digital_products
      )

    assert_pattern do
      response => Dodopayments::Product
    end

    assert_pattern do
      response => {
        brand_id: String,
        business_id: String,
        created_at: Time,
        is_recurring: Dodopayments::Internal::Type::Boolean,
        license_key_enabled: Dodopayments::Internal::Type::Boolean,
        price: Dodopayments::Price,
        product_id: String,
        tax_category: Dodopayments::TaxCategory,
        updated_at: Time,
        addons: ^(Dodopayments::Internal::Type::ArrayOf[String]) | nil,
        description: String | nil,
        image: String | nil,
        license_key_activation_message: String | nil,
        license_key_activations_limit: Integer | nil,
        license_key_duration: Dodopayments::LicenseKeyDuration | nil,
        name: String | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.products.retrieve("id")

    assert_pattern do
      response => Dodopayments::Product
    end

    assert_pattern do
      response => {
        brand_id: String,
        business_id: String,
        created_at: Time,
        is_recurring: Dodopayments::Internal::Type::Boolean,
        license_key_enabled: Dodopayments::Internal::Type::Boolean,
        price: Dodopayments::Price,
        product_id: String,
        tax_category: Dodopayments::TaxCategory,
        updated_at: Time,
        addons: ^(Dodopayments::Internal::Type::ArrayOf[String]) | nil,
        description: String | nil,
        image: String | nil,
        license_key_activation_message: String | nil,
        license_key_activations_limit: Integer | nil,
        license_key_duration: Dodopayments::LicenseKeyDuration | nil,
        name: String | nil
      }
    end
  end

  def test_update
    response = @dodo_payments.products.update("id")

    assert_pattern do
      response => nil
    end
  end

  def test_list
    response = @dodo_payments.products.list

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Models::ProductListResponse
    end

    assert_pattern do
      row => {
        business_id: String,
        created_at: Time,
        is_recurring: Dodopayments::Internal::Type::Boolean,
        product_id: String,
        tax_category: Dodopayments::TaxCategory,
        updated_at: Time,
        currency: Dodopayments::Currency | nil,
        description: String | nil,
        image: String | nil,
        name: String | nil,
        price: Integer | nil,
        price_detail: Dodopayments::Price | nil,
        tax_inclusive: Dodopayments::Internal::Type::Boolean | nil
      }
    end
  end

  def test_delete
    response = @dodo_payments.products.delete("id")

    assert_pattern do
      response => nil
    end
  end

  def test_unarchive
    response = @dodo_payments.products.unarchive("id")

    assert_pattern do
      response => nil
    end
  end
end
