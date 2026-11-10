# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Invoices#update_dunning
    class InvoiceUpdateDunningParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute invoice_id
      #
      #   @return [String]
      required :invoice_id, String

      # @!attribute action
      #
      #   @return [Symbol, Dodopayments::Models::InvoiceUpdateDunningParams::Action]
      required :action, enum: -> { Dodopayments::InvoiceUpdateDunningParams::Action }

      # @!attribute if_match
      #
      #   @return [String]
      required :if_match, String

      # @!attribute offsets_days
      #   Needed for `reschedule`. Days from the due date.
      #
      #   @return [Array<Integer>, nil]
      optional :offsets_days, Dodopayments::Internal::Type::ArrayOf[Integer], nil?: true

      # @!method initialize(invoice_id:, action:, if_match:, offsets_days: nil, request_options: {})
      #   @param invoice_id [String]
      #
      #   @param action [Symbol, Dodopayments::Models::InvoiceUpdateDunningParams::Action]
      #
      #   @param if_match [String]
      #
      #   @param offsets_days [Array<Integer>, nil] Needed for `reschedule`. Days from the due date.
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      module Action
        extend Dodopayments::Internal::Type::Enum

        PAUSE = :pause
        RESUME = :resume
        RESCHEDULE = :reschedule

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
