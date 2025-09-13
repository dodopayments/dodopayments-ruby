# frozen_string_literal: true

module Dodopayments
  module Models
    module Customers
      class CustomerWallet < Dodopayments::Internal::Type::BaseModel
        # @!attribute balance
        #
        #   @return [Integer]
        required :balance, Integer

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute currency
        #
        #   @return [Symbol, Dodopayments::Models::Currency]
        required :currency, enum: -> { Dodopayments::Currency }

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(balance:, created_at:, currency:, customer_id:, updated_at:)
        #   @param balance [Integer]
        #   @param created_at [Time]
        #   @param currency [Symbol, Dodopayments::Models::Currency]
        #   @param customer_id [String]
        #   @param updated_at [Time]
      end
    end

    CustomerWallet = Customers::CustomerWallet
  end
end
