# frozen_string_literal: true

module Dodopayments
  module Models
    module Webhooks
      # @see Dodopayments::Resources::Webhooks::Headers#retrieve
      class HeaderRetrieveResponse < Dodopayments::Internal::Type::BaseModel
        # @!attribute headers
        #   List of headers configured
        #
        #   @return [Hash{Symbol=>String}]
        required :headers, Dodopayments::Internal::Type::HashOf[String]

        # @!attribute sensitive
        #   Sensitive headers without the value
        #
        #   @return [Array<String>]
        required :sensitive, Dodopayments::Internal::Type::ArrayOf[String]

        # @!method initialize(headers:, sensitive:)
        #   The value of the headers is returned in the `headers` field.
        #
        #   Sensitive headers that have been redacted are returned in the sensitive field.
        #
        #   @param headers [Hash{Symbol=>String}] List of headers configured
        #
        #   @param sensitive [Array<String>] Sensitive headers without the value
      end
    end
  end
end
