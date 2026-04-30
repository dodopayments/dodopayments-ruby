# typed: strong

module Dodopayments
  module Models
    class DigitalProductDeliveryFile < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::DigitalProductDeliveryFile,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :download_url

      # Seconds until `download_url` expires.
      sig { returns(Integer) }
      attr_accessor :expires_in

      sig { returns(String) }
      attr_accessor :file_id

      sig { returns(String) }
      attr_accessor :filename

      sig { returns(T.nilable(String)) }
      attr_accessor :content_type

      sig { returns(T.nilable(Integer)) }
      attr_accessor :file_size

      sig do
        params(
          download_url: String,
          expires_in: Integer,
          file_id: String,
          filename: String,
          content_type: T.nilable(String),
          file_size: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        download_url:,
        # Seconds until `download_url` expires.
        expires_in:,
        file_id:,
        filename:,
        content_type: nil,
        file_size: nil
      )
      end

      sig do
        override.returns(
          {
            download_url: String,
            expires_in: Integer,
            file_id: String,
            filename: String,
            content_type: T.nilable(String),
            file_size: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end
    end
  end
end
