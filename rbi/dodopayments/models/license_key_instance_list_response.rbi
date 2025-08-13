# typed: strong

module Dodopayments
  module Models
    class LicenseKeyInstanceListResponseItem < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::LicenseKeyInstanceListResponseItem,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Dodopayments::LicenseKeyInstance]) }
      attr_accessor :items

      sig do
        params(
          items: T::Array[Dodopayments::LicenseKeyInstance::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(items:)
      end

      sig do
        override.returns({ items: T::Array[Dodopayments::LicenseKeyInstance] })
      end
      def to_hash
      end
    end

    LicenseKeyInstanceListResponse =
      T.let(
        Dodopayments::Internal::Type::ArrayOf[
          Dodopayments::Models::LicenseKeyInstanceListResponseItem
        ],
        Dodopayments::Internal::Type::Converter
      )
  end
end
