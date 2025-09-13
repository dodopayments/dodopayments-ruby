# frozen_string_literal: true

module Dodopayments
  module Models
    module Customers
      module Wallets
        # @see Dodopayments::Resources::Customers::Wallets::LedgerEntries#list
        class LedgerEntryListParams < Dodopayments::Internal::Type::BaseModel
          extend Dodopayments::Internal::Type::RequestParameters::Converter
          include Dodopayments::Internal::Type::RequestParameters

          # @!attribute currency
          #   Optional currency filter
          #
          #   @return [Symbol, Dodopayments::Models::Currency, nil]
          optional :currency, enum: -> { Dodopayments::Currency }

          # @!attribute page_number
          #
          #   @return [Integer, nil]
          optional :page_number, Integer

          # @!attribute page_size
          #
          #   @return [Integer, nil]
          optional :page_size, Integer

          # @!method initialize(currency: nil, page_number: nil, page_size: nil, request_options: {})
          #   @param currency [Symbol, Dodopayments::Models::Currency] Optional currency filter
          #
          #   @param page_number [Integer]
          #
          #   @param page_size [Integer]
          #
          #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
