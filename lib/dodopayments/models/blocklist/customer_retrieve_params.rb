# frozen_string_literal: true

module Dodopayments
  module Models
    module Blocklist
      # @see Dodopayments::Resources::Blocklist::Customers#retrieve
      class CustomerRetrieveParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute entry_id
        #
        #   @return [String]
        required :entry_id, String

        # @!method initialize(entry_id:, request_options: {})
        #   @param entry_id [String]
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
