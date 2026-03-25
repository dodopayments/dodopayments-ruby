# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::ProductCollectionsTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response =
      @dodo_payments.product_collections.create(
        groups: [{products: [{product_id: "product_id"}]}],
        name: "name"
      )

    assert_pattern do
      response => Dodopayments::Models::ProductCollectionCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        brand_id: String,
        created_at: Time,
        groups: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::ProductCollectionCreateResponse::Group]),
        name: String,
        updated_at: Time,
        description: String | nil,
        image: String | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.product_collections.retrieve("id")

    assert_pattern do
      response => Dodopayments::Models::ProductCollectionRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        brand_id: String,
        created_at: Time,
        groups: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::ProductCollectionRetrieveResponse::Group]),
        name: String,
        updated_at: Time,
        description: String | nil,
        image: String | nil
      }
    end
  end

  def test_update
    response = @dodo_payments.product_collections.update("id")

    assert_pattern do
      response => nil
    end
  end

  def test_list
    response = @dodo_payments.product_collections.list

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Models::ProductCollectionListResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        name: String,
        products_count: Integer,
        updated_at: Time,
        description: String | nil,
        image: String | nil
      }
    end
  end

  def test_delete
    response = @dodo_payments.product_collections.delete("id")

    assert_pattern do
      response => nil
    end
  end

  def test_unarchive
    response = @dodo_payments.product_collections.unarchive("id")

    assert_pattern do
      response => Dodopayments::Models::ProductCollectionUnarchiveResponse
    end

    assert_pattern do
      response => {
        collection_id: String,
        excluded_product_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        message: String
      }
    end
  end

  def test_update_images
    response = @dodo_payments.product_collections.update_images("id")

    assert_pattern do
      response => Dodopayments::Models::ProductCollectionUpdateImagesResponse
    end

    assert_pattern do
      response => {
        url: String,
        image_id: String | nil
      }
    end
  end
end
