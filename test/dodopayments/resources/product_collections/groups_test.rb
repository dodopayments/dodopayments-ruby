# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::ProductCollections::GroupsTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response = @dodo_payments.product_collections.groups.create("id", products: [{product_id: "product_id"}])

    assert_pattern do
      response => Dodopayments::Models::ProductCollections::GroupCreateResponse
    end

    assert_pattern do
      response => {
        group_id: String,
        products: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::ProductCollections::GroupCreateResponse::Product]),
        status: Dodopayments::Internal::Type::Boolean,
        group_name: String | nil
      }
    end
  end

  def test_update_required_params
    response =
      @dodo_payments.product_collections.groups.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_delete_required_params
    response =
      @dodo_payments.product_collections.groups.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", id: "id")

    assert_pattern do
      response => nil
    end
  end
end
