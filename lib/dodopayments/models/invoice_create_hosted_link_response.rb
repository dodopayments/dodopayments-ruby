# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Invoices#create_hosted_link
    class InvoiceCreateHostedLinkResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute expires_at
      #
      #   @return [Time]
      required :expires_at, Time

      # @!attribute hosted_url
      #
      #   @return [String]
      required :hosted_url, String

      # @!method initialize(expires_at:, hosted_url:)
      #   @param expires_at [Time]
      #   @param hosted_url [String]
    end
  end
end
