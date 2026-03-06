# frozen_string_literal: true

module Dodopayments
  module Models
    module CreditEntitlements
      # @see Dodopayments::Resources::CreditEntitlements::Balances#list_ledger
      class BalanceListLedgerParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute credit_entitlement_id
        #
        #   @return [String]
        required :credit_entitlement_id, String

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute end_date
        #   Filter by end date
        #
        #   @return [Time, nil]
        optional :end_date, Time

        # @!attribute page_number
        #   Page number default is 0
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   Page size default is 10 max is 100
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute start_date
        #   Filter by start date
        #
        #   @return [Time, nil]
        optional :start_date, Time

        # @!attribute transaction_type
        #   Filter by transaction type (snake_case: credit_added, credit_deducted,
        #   credit_expired, etc.)
        #
        #   @return [String, nil]
        optional :transaction_type, String

        # @!method initialize(credit_entitlement_id:, customer_id:, end_date: nil, page_number: nil, page_size: nil, start_date: nil, transaction_type: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::CreditEntitlements::BalanceListLedgerParams} for more
        #   details.
        #
        #   @param credit_entitlement_id [String]
        #
        #   @param customer_id [String]
        #
        #   @param end_date [Time] Filter by end date
        #
        #   @param page_number [Integer] Page number default is 0
        #
        #   @param page_size [Integer] Page size default is 10 max is 100
        #
        #   @param start_date [Time] Filter by start date
        #
        #   @param transaction_type [String] Filter by transaction type (snake_case: credit_added, credit_deducted, credit_ex
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
