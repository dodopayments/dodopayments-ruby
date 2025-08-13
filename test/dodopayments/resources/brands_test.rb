# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::BrandsTest < Dodopayments::Test::ResourceTest
  def test_create
    response = @dodo_payments.brands.create

    assert_pattern do
      response => Dodopayments::Brand
    end

    assert_pattern do
      response => {
        brand_id: String,
        business_id: String,
        enabled: Dodopayments::Internal::Type::Boolean,
        statement_descriptor: String,
        verification_enabled: Dodopayments::Internal::Type::Boolean,
        verification_status: Dodopayments::Brand::VerificationStatus,
        description: String | nil,
        image: String | nil,
        name: String | nil,
        reason_for_hold: String | nil,
        support_email: String | nil,
        url: String | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.brands.retrieve("id")

    assert_pattern do
      response => Dodopayments::Brand
    end

    assert_pattern do
      response => {
        brand_id: String,
        business_id: String,
        enabled: Dodopayments::Internal::Type::Boolean,
        statement_descriptor: String,
        verification_enabled: Dodopayments::Internal::Type::Boolean,
        verification_status: Dodopayments::Brand::VerificationStatus,
        description: String | nil,
        image: String | nil,
        name: String | nil,
        reason_for_hold: String | nil,
        support_email: String | nil,
        url: String | nil
      }
    end
  end

  def test_update
    response = @dodo_payments.brands.update("id")

    assert_pattern do
      response => Dodopayments::Brand
    end

    assert_pattern do
      response => {
        brand_id: String,
        business_id: String,
        enabled: Dodopayments::Internal::Type::Boolean,
        statement_descriptor: String,
        verification_enabled: Dodopayments::Internal::Type::Boolean,
        verification_status: Dodopayments::Brand::VerificationStatus,
        description: String | nil,
        image: String | nil,
        name: String | nil,
        reason_for_hold: String | nil,
        support_email: String | nil,
        url: String | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.brands.list

    assert_pattern do
      response => Dodopayments::Models::BrandListResponse
    end

    assert_pattern do
      response => {
        items: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Brand])
      }
    end
  end

  def test_update_images
    response = @dodo_payments.brands.update_images("id")

    assert_pattern do
      response => Dodopayments::Models::BrandUpdateImagesResponse
    end

    assert_pattern do
      response => {
        image_id: String,
        url: String
      }
    end
  end
end
