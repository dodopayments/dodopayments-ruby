# typed: strong

module Dodopayments
  module Models
    class MeterCreditEntitlementCartResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::MeterCreditEntitlementCartResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :credit_entitlement_id

      sig { returns(String) }
      attr_accessor :meter_id

      sig { returns(String) }
      attr_accessor :meter_name

      sig { returns(String) }
      attr_accessor :meter_units_per_credit

      sig { returns(String) }
      attr_accessor :product_id

      # Response struct representing meter-credit entitlement mapping cart details for a
      # subscription
      sig do
        params(
          credit_entitlement_id: String,
          meter_id: String,
          meter_name: String,
          meter_units_per_credit: String,
          product_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        credit_entitlement_id:,
        meter_id:,
        meter_name:,
        meter_units_per_credit:,
        product_id:
      )
      end

      sig do
        override.returns(
          {
            credit_entitlement_id: String,
            meter_id: String,
            meter_name: String,
            meter_units_per_credit: String,
            product_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
