# typed: strong

module Dodopayments
  module Models
    class DisputeRetrieveParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::DisputeRetrieveParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :dispute_id

      sig do
        params(
          dispute_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(dispute_id:, request_options: {})
      end

      sig do
        override.returns(
          { dispute_id: String, request_options: Dodopayments::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
