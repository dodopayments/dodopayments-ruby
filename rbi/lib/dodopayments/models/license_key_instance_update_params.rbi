# typed: strong

module Dodopayments
  module Models
    class LicenseKeyInstanceUpdateParams < Dodopayments::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig do
        params(
          name: String,
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(name:, request_options: {})
      end

      sig { override.returns({name: String, request_options: Dodopayments::RequestOptions}) }
      def to_hash
      end
    end
  end
end
