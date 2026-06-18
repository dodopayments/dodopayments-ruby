# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::ProductCollections::GroupsTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response =
      @dodo_payments.product_collections.groups.create(
        "pdc_8BWv0hojwUH7iCDabr0NI",
        products: [{product_id: "product_id"}]
      )

    assert_pattern do
      response => Dodopayments::ProductCollections::ProductCollectionGroupResponse
    end

    assert_pattern do
      response => {
        group_id: String,
        products: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::ProductCollections::Groups::ProductCollectionProduct]),
        status: Dodopayments::Internal::Type::Boolean,
        group_name: String | nil
      }
    end
  end

  def test_update_required_params
    response =
      @dodo_payments.product_collections.groups.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        id: "pdc_8BWv0hojwUH7iCDabr0NI"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_delete_required_params
    response =
      @dodo_payments.product_collections.groups.delete(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        id: "pdc_8BWv0hojwUH7iCDabr0NI"
      )

    assert_pattern do
      response => nil
    end
  end
end
