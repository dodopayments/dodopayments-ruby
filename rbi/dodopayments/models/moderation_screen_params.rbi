# typed: strong

module Dodopayments
  module Models
    class ModerationScreenParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::ModerationScreenParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # The image to screen, as base64, with or without a `data:image/...;base64,`
      # prefix. The formats are JPEG, PNG, WebP, GIF and BMP. The limit is 6991530
      # base64 characters, and the decoded image must be at most 5 MiB.
      sig { returns(T.nilable(String)) }
      attr_accessor :image

      # Your identifier for this screen, up to 128 characters, with no control
      # characters. The response returns it in `request_id`.
      sig { returns(T.nilable(String)) }
      attr_accessor :request_id

      # The text to screen, up to 8000 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :text

      sig do
        params(
          image: T.nilable(String),
          request_id: T.nilable(String),
          text: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The image to screen, as base64, with or without a `data:image/...;base64,`
        # prefix. The formats are JPEG, PNG, WebP, GIF and BMP. The limit is 6991530
        # base64 characters, and the decoded image must be at most 5 MiB.
        image: nil,
        # Your identifier for this screen, up to 128 characters, with no control
        # characters. The response returns it in `request_id`.
        request_id: nil,
        # The text to screen, up to 8000 characters.
        text: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            image: T.nilable(String),
            request_id: T.nilable(String),
            text: T.nilable(String),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
