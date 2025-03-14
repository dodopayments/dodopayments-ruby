# frozen_string_literal: true

require_relative "../../test_helper"

class DodoPayments::Test::Resources::Products::ImagesTest < DodoPayments::Test::ResourceTest
  def test_update
    response = @dodo_payments.products.images.update("id")

    assert_pattern do
      response => DodoPayments::Models::Products::ImageUpdateResponse
    end

    assert_pattern do
      response => {
        url: String,
        image_id: String | nil
      }
    end
  end
end
