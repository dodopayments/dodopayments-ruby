# frozen_string_literal: true

module Dodopayments
  module Models
    class MeterCreditEntitlementCartResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute credit_entitlement_id
      #
      #   @return [String]
      required :credit_entitlement_id, String

      # @!attribute meter_id
      #
      #   @return [String]
      required :meter_id, String

      # @!attribute meter_name
      #
      #   @return [String]
      required :meter_name, String

      # @!attribute meter_units_per_credit
      #
      #   @return [String]
      required :meter_units_per_credit, String

      # @!attribute product_id
      #
      #   @return [String]
      required :product_id, String

      # @!method initialize(credit_entitlement_id:, meter_id:, meter_name:, meter_units_per_credit:, product_id:)
      #   Response struct representing meter-credit entitlement mapping cart details for a
      #   subscription
      #
      #   @param credit_entitlement_id [String]
      #   @param meter_id [String]
      #   @param meter_name [String]
      #   @param meter_units_per_credit [String]
      #   @param product_id [String]
    end
  end
end
