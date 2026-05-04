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

      # Short-lived presigned URL for downloading the file.
      sig { returns(String) }
      attr_accessor :download_url

      # Seconds until `download_url` expires.
      sig { returns(Integer) }
      attr_accessor :expires_in

      # Identifier of the attached file.
      sig { returns(String) }
      attr_accessor :file_id

      # Original filename of the attached file.
      sig { returns(String) }
      attr_accessor :filename

      # Optional content-type declared at upload.
      sig { returns(T.nilable(String)) }
      attr_accessor :content_type

      # Optional size of the file in bytes.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :file_size

      # One file in a digital-product delivery payload.
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
        # Short-lived presigned URL for downloading the file.
        download_url:,
        # Seconds until `download_url` expires.
        expires_in:,
        # Identifier of the attached file.
        file_id:,
        # Original filename of the attached file.
        filename:,
        # Optional content-type declared at upload.
        content_type: nil,
        # Optional size of the file in bytes.
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
