# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Customers#list_credit_entitlements
    class CustomerListCreditEntitlementsResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute items
      #
      #   @return [Array<Dodopayments::Models::CustomerListCreditEntitlementsResponse::Item>]
      required :items,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::CustomerListCreditEntitlementsResponse::Item] }

      # @!method initialize(items:)
      #   @param items [Array<Dodopayments::Models::CustomerListCreditEntitlementsResponse::Item>]

      class Item < Dodopayments::Internal::Type::BaseModel
        # @!attribute balance
        #   Customer's current remaining credit balance
        #
        #   @return [String]
        required :balance, String

        # @!attribute credit_entitlement_id
        #   Credit entitlement ID
        #
        #   @return [String]
        required :credit_entitlement_id, String

        # @!attribute name
        #   Name of the credit entitlement
        #
        #   @return [String]
        required :name, String

        # @!attribute overage
        #   Customer's current overage balance
        #
        #   @return [String]
        required :overage, String

        # @!attribute unit
        #   Unit label (e.g. "API Calls", "Tokens")
        #
        #   @return [String]
        required :unit, String

        # @!attribute description
        #   Description of the credit entitlement
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!method initialize(balance:, credit_entitlement_id:, name:, overage:, unit:, description: nil)
        #   A credit entitlement with the customer's current balance
        #
        #   @param balance [String] Customer's current remaining credit balance
        #
        #   @param credit_entitlement_id [String] Credit entitlement ID
        #
        #   @param name [String] Name of the credit entitlement
        #
        #   @param overage [String] Customer's current overage balance
        #
        #   @param unit [String] Unit label (e.g. "API Calls", "Tokens")
        #
        #   @param description [String, nil] Description of the credit entitlement
      end
    end
  end
end
