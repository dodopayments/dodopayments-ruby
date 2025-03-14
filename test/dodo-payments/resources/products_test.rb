# frozen_string_literal: true

require_relative "../test_helper"

class DodoPayments::Test::Resources::ProductsTest < DodoPayments::Test::ResourceTest
  def test_create_required_params
    response = @dodo_payments.products.create(
      price: {currency: :AED, discount: 0, price: 0, purchasing_power_parity: true, type: :one_time_price},
      tax_category: :digital_products
    )

    assert_pattern do
      response => DodoPayments::Models::Product
    end

    assert_pattern do
      response => {
        business_id: String,
        created_at: Time,
        is_recurring: DodoPayments::BooleanModel,
        license_key_enabled: DodoPayments::BooleanModel,
        price: DodoPayments::Models::Product::Price,
        product_id: String,
        tax_category: DodoPayments::Models::Product::TaxCategory,
        updated_at: Time,
        description: String | nil,
        image: String | nil,
        license_key_activation_message: String | nil,
        license_key_activations_limit: Integer | nil,
        license_key_duration: DodoPayments::Models::Product::LicenseKeyDuration | nil,
        name: String | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.products.retrieve("id")

    assert_pattern do
      response => DodoPayments::Models::Product
    end

    assert_pattern do
      response => {
        business_id: String,
        created_at: Time,
        is_recurring: DodoPayments::BooleanModel,
        license_key_enabled: DodoPayments::BooleanModel,
        price: DodoPayments::Models::Product::Price,
        product_id: String,
        tax_category: DodoPayments::Models::Product::TaxCategory,
        updated_at: Time,
        description: String | nil,
        image: String | nil,
        license_key_activation_message: String | nil,
        license_key_activations_limit: Integer | nil,
        license_key_duration: DodoPayments::Models::Product::LicenseKeyDuration | nil,
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
      response => DodoPayments::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    assert_pattern do
      row => DodoPayments::Models::ProductListResponse
    end

    assert_pattern do
      row => {
        business_id: String,
        created_at: Time,
        is_recurring: DodoPayments::BooleanModel,
        product_id: String,
        tax_category: DodoPayments::Models::ProductListResponse::TaxCategory,
        updated_at: Time,
        currency: DodoPayments::Models::ProductListResponse::Currency | nil,
        description: String | nil,
        image: String | nil,
        name: String | nil,
        price: Integer | nil,
        price_detail: DodoPayments::Models::ProductListResponse::PriceDetail | nil,
        tax_inclusive: DodoPayments::BooleanModel | nil
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
