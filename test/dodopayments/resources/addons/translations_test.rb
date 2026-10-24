# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::Addons::TranslationsTest < Dodopayments::Test::ResourceTest
  def test_update_required_params
    response = @dodo_payments.addons.translations.update(:ar, id: "id")

    assert_pattern do
      response => Dodopayments::Products::Translation
    end

    assert_pattern do
      response => {
        locale: Dodopayments::Locale,
        updated_at: Time,
        description: String | nil,
        name: String | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.addons.translations.list("id")

    assert_pattern do
      response => Dodopayments::Products::TranslationsListResponse
    end

    assert_pattern do
      response => {
        items: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Products::Translation])
      }
    end
  end

  def test_delete_required_params
    response = @dodo_payments.addons.translations.delete(:ar, id: "id")

    assert_pattern do
      response => nil
    end
  end
end
