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

      # One entry per attached file.
      sig { returns(T::Array[Dodopayments::DigitalProductDeliveryFile]) }
      attr_accessor :files

      # Optional external URL, passed through from the entitlement configuration.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_url

      # Optional human-readable delivery instructions, passed through from the
      # entitlement configuration.
      sig { returns(T.nilable(String)) }
      attr_accessor :instructions

      # Digital-product-delivery payload, present on grants for `digital_files`
      # entitlements. Each file carries a short-lived presigned download URL.
      sig do
        params(
          files: T::Array[Dodopayments::DigitalProductDeliveryFile::OrHash],
          external_url: T.nilable(String),
          instructions: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # One entry per attached file.
        files:,
        # Optional external URL, passed through from the entitlement configuration.
        external_url: nil,
        # Optional human-readable delivery instructions, passed through from the
        # entitlement configuration.
        instructions: nil
      )
      end

      sig do
        override.returns(
          {
            files: T::Array[Dodopayments::DigitalProductDeliveryFile],
            external_url: T.nilable(String),
            instructions: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
