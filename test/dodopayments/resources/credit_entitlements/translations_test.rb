# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::CreditEntitlements::TranslationsTest < Dodopayments::Test::ResourceTest
  def test_update_required_params
    response = @dodo_payments.credit_entitlements.translations.update(:ar, id: "id")

    assert_pattern do
      response => Dodopayments::CreditEntitlements::CreditEntitlementTranslation
    end

    assert_pattern do
      response => {
        locale: Dodopayments::Locale,
        updated_at: Time,
        name: String | nil,
        unit: String | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.credit_entitlements.translations.list("id")

    assert_pattern do
      response => Dodopayments::CreditEntitlements::CreditEntitlementTranslationsListResponse
    end

    assert_pattern do
      response => {
        items: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::CreditEntitlements::CreditEntitlementTranslation])
      }
    end
  end

  def test_delete_required_params
    response = @dodo_payments.credit_entitlements.translations.delete(:ar, id: "id")

    assert_pattern do
      response => nil
    end
  end
end
