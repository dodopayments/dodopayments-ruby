# frozen_string_literal: true

require_relative "../../../test_helper"

class Dodopayments::Test::Resources::ProductCollections::Groups::ItemsTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response =
      @dodo_payments.product_collections.groups.items.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        id: "id",
        products: [{product_id: "product_id"}]
      )

    assert_pattern do
      response => ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::ProductCollections::Groups::ItemCreateResponseItem])
    end
  end

  def test_update_required_params
    response =
      @dodo_payments.product_collections.groups.items.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        id: "id",
        group_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        status: true
      )

    assert_pattern do
      response => nil
    end
  end

  def test_delete_required_params
    response =
      @dodo_payments.product_collections.groups.items.delete(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        id: "id",
        group_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => nil
    end
  end
end
