# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Moderation#screen
    class ModerationScreenParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute image
      #   The image to screen, as base64, with or without a `data:image/...;base64,`
      #   prefix. The formats are JPEG, PNG, WebP, GIF and BMP. The limit is 6991530
      #   base64 characters, and the decoded image must be at most 5 MiB.
      #
      #   @return [String, nil]
      optional :image, String, nil?: true

      # @!attribute request_id
      #   Your identifier for this screen, up to 128 characters, with no control
      #   characters. The response returns it in `request_id`.
      #
      #   @return [String, nil]
      optional :request_id, String, nil?: true

      # @!attribute text
      #   The text to screen, up to 8000 characters.
      #
      #   @return [String, nil]
      optional :text, String, nil?: true

      # @!method initialize(image: nil, request_id: nil, text: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ModerationScreenParams} for more details.
      #
      #   @param image [String, nil] The image to screen, as base64, with or without a `data:image/...;base64,` prefi
      #
      #   @param request_id [String, nil] Your identifier for this screen, up to 128 characters, with no control character
      #
      #   @param text [String, nil] The text to screen, up to 8000 characters.
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
