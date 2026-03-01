# typed: strong

module Dodopayments
  module Models
    class DigitalProductDelivery < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::DigitalProductDelivery,
            Dodopayments::Internal::AnyHash
          )
        end

      # External URL to digital product
      sig { returns(T.nilable(String)) }
      attr_accessor :external_url

      # Uploaded files ids of digital product
      sig do
        returns(T.nilable(T::Array[Dodopayments::DigitalProductDeliveryFile]))
      end
      attr_accessor :files

      # Instructions to download and use the digital product
      sig { returns(T.nilable(String)) }
      attr_accessor :instructions

      sig do
        params(
          external_url: T.nilable(String),
          files:
            T.nilable(
              T::Array[Dodopayments::DigitalProductDeliveryFile::OrHash]
            ),
          instructions: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # External URL to digital product
        external_url: nil,
        # Uploaded files ids of digital product
        files: nil,
        # Instructions to download and use the digital product
        instructions: nil
      )
      end

      sig do
        override.returns(
          {
            external_url: T.nilable(String),
            files:
              T.nilable(T::Array[Dodopayments::DigitalProductDeliveryFile]),
            instructions: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
