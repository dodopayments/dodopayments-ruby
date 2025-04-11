# typed: strong

module Dodopayments
  module Models
    class LicenseKeyListResponseItem < Dodopayments::Internal::Type::BaseModel
      sig { returns(T::Array[Dodopayments::Models::LicenseKey]) }
      attr_accessor :items

      sig do
        params(items: T::Array[T.any(Dodopayments::Models::LicenseKey, Dodopayments::Internal::AnyHash)])
          .returns(T.attached_class)
      end
      def self.new(items:); end

      sig { override.returns({items: T::Array[Dodopayments::Models::LicenseKey]}) }
      def to_hash; end
    end

    LicenseKeyListResponse =
      T.let(
        Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::LicenseKeyListResponseItem],
        Dodopayments::Internal::Type::Converter
      )
  end
end
