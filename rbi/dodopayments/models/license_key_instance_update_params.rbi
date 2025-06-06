# typed: strong

module Dodopayments
  module Models
    class LicenseKeyInstanceUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      sig { returns(String) }
      attr_accessor :name

      sig do
        params(
          name: String,
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(name:, request_options: {}); end

      sig { override.returns({name: String, request_options: Dodopayments::RequestOptions}) }
      def to_hash; end
    end
  end
end
