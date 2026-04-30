# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::Entitlements::FilesTest < Dodopayments::Test::ResourceTest
  def test_delete_required_params
    response = @dodo_payments.entitlements.files.delete("file_id", id: "id")

    assert_pattern do
      response => nil
    end
  end

  def test_upload
    response = @dodo_payments.entitlements.files.upload("id")

    assert_pattern do
      response => Dodopayments::Models::Entitlements::FileUploadResponse
    end

    assert_pattern do
      response => {
        file_id: String
      }
    end
  end
end
