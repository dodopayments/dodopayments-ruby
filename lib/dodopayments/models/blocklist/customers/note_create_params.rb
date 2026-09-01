# frozen_string_literal: true

module Dodopayments
  module Models
    module Blocklist
      module Customers
        # @see Dodopayments::Resources::Blocklist::Customers::Notes#create
        class NoteCreateParams < Dodopayments::Models::Blocklist::Customers::NoteRequest
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
end
