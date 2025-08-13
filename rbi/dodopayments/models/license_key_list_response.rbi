# typed: strong

module Dodopayments
  module Models
    class LicenseKeyListResponseItem < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::LicenseKeyListResponseItem,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Dodopayments::LicenseKey]) }
      attr_accessor :items

      sig do
        params(items: T::Array[Dodopayments::LicenseKey::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(items:)
      end

      sig { override.returns({ items: T::Array[Dodopayments::LicenseKey] }) }
      def to_hash
      end
    end

    LicenseKeyListResponse =
      T.let(
        Dodopayments::Internal::Type::ArrayOf[
          Dodopayments::Models::LicenseKeyListResponseItem
        ],
        Dodopayments::Internal::Type::Converter
      )
  end
end
