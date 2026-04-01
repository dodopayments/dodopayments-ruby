# typed: strong

module Dodopayments
  module Models
    module Payouts
      class BreakupRetrieveParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Payouts::BreakupRetrieveParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :payout_id

        sig do
          params(
            payout_id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(payout_id:, request_options: {})
        end

        sig do
          override.returns(
            { payout_id: String, request_options: Dodopayments::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
