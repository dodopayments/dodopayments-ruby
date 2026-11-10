# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Invoices#list_events
    class InvoiceListEventsResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute items
      #
      #   @return [Array<Dodopayments::Models::InvoiceEvent>]
      required :items, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::InvoiceEvent] }

      # @!method initialize(items:)
      #   @param items [Array<Dodopayments::Models::InvoiceEvent>]
    end
  end
end
