# typed: strong

module Dodopayments
  module Models
    class LicenseKeyInstanceListResponseItem < Dodopayments::Internal::Type::BaseModel
      sig { returns(T::Array[Dodopayments::Models::LicenseKeyInstance]) }
      attr_accessor :items

      sig do
        params(items: T::Array[T.any(Dodopayments::Models::LicenseKeyInstance, Dodopayments::Internal::AnyHash)])
          .returns(T.attached_class)
      end
      def self.new(items:); end

      sig { override.returns({items: T::Array[Dodopayments::Models::LicenseKeyInstance]}) }
      def to_hash; end
    end

    LicenseKeyInstanceListResponse =
      T.let(
        Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::LicenseKeyInstanceListResponseItem],
        Dodopayments::Internal::Type::Converter
      )
  end
end
