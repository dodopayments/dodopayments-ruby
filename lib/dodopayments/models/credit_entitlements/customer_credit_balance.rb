# frozen_string_literal: true

module Dodopayments
  module Models
    module CreditEntitlements
      # @see Dodopayments::Resources::CreditEntitlements::Balances#retrieve
      class CustomerCreditBalance < Dodopayments::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute balance
        #
        #   @return [String]
        required :balance, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_entitlement_id
        #
        #   @return [String]
        required :credit_entitlement_id, String

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute overage
        #
        #   @return [String]
        required :overage, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute last_transaction_at
        #
        #   @return [Time, nil]
        optional :last_transaction_at, Time, nil?: true

        # @!method initialize(id:, balance:, created_at:, credit_entitlement_id:, customer_id:, overage:, updated_at:, last_transaction_at: nil)
        #   Response for a customer's credit balance
        #
        #   @param id [String]
        #   @param balance [String]
        #   @param created_at [Time]
        #   @param credit_entitlement_id [String]
        #   @param customer_id [String]
        #   @param overage [String]
        #   @param updated_at [Time]
        #   @param last_transaction_at [Time, nil]
      end
    end
  end
end
