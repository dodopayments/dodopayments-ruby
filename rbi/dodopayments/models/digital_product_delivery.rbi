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

      sig { returns(T::Array[Dodopayments::DigitalProductDeliveryFile]) }
      attr_accessor :files

      sig { returns(T.nilable(String)) }
      attr_accessor :external_url

      sig { returns(T.nilable(String)) }
      attr_accessor :instructions

      # Digital-product-delivery payload for a grant. Populated for grants whose
      # entitlement has `integration_type = 'digital_files'`. `files` carries presigned
      # download URLs; the source (EE service or legacy in-process S3 presigning) is
      # opaque to the caller.
      sig do
        params(
          files: T::Array[Dodopayments::DigitalProductDeliveryFile::OrHash],
          external_url: T.nilable(String),
          instructions: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(files:, external_url: nil, instructions: nil)
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
