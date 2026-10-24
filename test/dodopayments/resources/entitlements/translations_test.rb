# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::Entitlements::TranslationsTest < Dodopayments::Test::ResourceTest
  def test_update_required_params
    response = @dodo_payments.entitlements.translations.update(:ar, id: "id")

    assert_pattern do
      response => Dodopayments::Entitlements::EntitlementTranslation
    end

    assert_pattern do
      response => {
        locale: Dodopayments::Locale,
        updated_at: Time,
        activation_message: String | nil,
        description: String | nil,
        instructions: String | nil,
        name: String | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.entitlements.translations.list("id")

    assert_pattern do
      response => Dodopayments::Entitlements::EntitlementTranslationsListResponse
    end

    assert_pattern do
      response => {
        items: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Entitlements::EntitlementTranslation])
      }
    end
  end

  def test_delete_required_params
    response = @dodo_payments.entitlements.translations.delete(:ar, id: "id")

    assert_pattern do
      response => nil
    end
  end
end
