# typed: strong

module Dodopayments
  module Models
    class DiscountDeleteParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, Dodopayments::Internal::AnyHash) }

      sig do
        params(request_options: Dodopayments::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig do
        override.returns({ request_options: Dodopayments::RequestOptions })
      end
      def to_hash
      end
    end
  end
end
