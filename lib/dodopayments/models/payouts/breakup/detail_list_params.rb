# frozen_string_literal: true

module Dodopayments
  module Models
    module Payouts
      module Breakup
        # @see Dodopayments::Resources::Payouts::Breakup::Details#list
        class DetailListParams < Dodopayments::Internal::Type::BaseModel
          extend Dodopayments::Internal::Type::RequestParameters::Converter
          include Dodopayments::Internal::Type::RequestParameters

          # @!attribute payout_id
          #
          #   @return [String]
          required :payout_id, String

          # @!attribute page_number
          #   Page number (0-indexed). Default: 0.
          #
          #   @return [Integer, nil]
          optional :page_number, Integer

          # @!attribute page_size
          #   Number of items per page. Default: 10, Max: 100.
          #
          #   @return [Integer, nil]
          optional :page_size, Integer

          # @!method initialize(payout_id:, page_number: nil, page_size: nil, request_options: {})
          #   @param payout_id [String]
          #
          #   @param page_number [Integer] Page number (0-indexed). Default: 0.
          #
          #   @param page_size [Integer] Number of items per page. Default: 10, Max: 100.
          #
          #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
