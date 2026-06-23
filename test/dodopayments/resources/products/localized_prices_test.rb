# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::Products::LocalizedPricesTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response =
      @dodo_payments.products.localized_prices.create("pdt_R8AWMPiV8RyJElcCKvAID", amount: 0, currency: :AED)

    assert_pattern do
      response => Dodopayments::Products::LocalizedPrice
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        created_at: Time,
        currency: Dodopayments::Currency,
        mode: Dodopayments::Products::PricingMode,
        product_id: String,
        updated_at: Time,
        country_code: Dodopayments::CountryCode | nil
      }
    end
  end

  def test_retrieve_required_params
    response =
      @dodo_payments.products.localized_prices.retrieve(
        "lcp_3aOOT7ebrzBOV41yL2V6s",
        product_id: "pdt_R8AWMPiV8RyJElcCKvAID"
      )

    assert_pattern do
      response => Dodopayments::Products::LocalizedPrice
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        created_at: Time,
        currency: Dodopayments::Currency,
        mode: Dodopayments::Products::PricingMode,
        product_id: String,
        updated_at: Time,
        country_code: Dodopayments::CountryCode | nil
      }
    end
  end

  def test_update_required_params
    response =
      @dodo_payments.products.localized_prices.update(
        "lcp_3aOOT7ebrzBOV41yL2V6s",
        product_id: "pdt_R8AWMPiV8RyJElcCKvAID"
      )

    assert_pattern do
      response => Dodopayments::Products::LocalizedPrice
    end

    assert_pattern do
      response => {
        id: String,
        amount: Integer,
        created_at: Time,
        currency: Dodopayments::Currency,
        mode: Dodopayments::Products::PricingMode,
        product_id: String,
        updated_at: Time,
        country_code: Dodopayments::CountryCode | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.products.localized_prices.list("pdt_R8AWMPiV8RyJElcCKvAID")

    assert_pattern do
      response => Dodopayments::Products::ListLocalizedPricesResponse
    end

    assert_pattern do
      response => {
        items: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Products::LocalizedPrice])
      }
    end
  end

  def test_archive_required_params
    response =
      @dodo_payments.products.localized_prices.archive(
        "lcp_3aOOT7ebrzBOV41yL2V6s",
        product_id: "pdt_R8AWMPiV8RyJElcCKvAID"
      )

    assert_pattern do
      response => nil
    end
  end
end
