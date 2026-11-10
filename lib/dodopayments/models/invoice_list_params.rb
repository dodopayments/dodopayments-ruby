# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Invoices#list
    class InvoiceListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute collection_method
      #
      #   @return [Symbol, Dodopayments::Models::InvoiceListParams::CollectionMethod, nil]
      optional :collection_method, enum: -> { Dodopayments::InvoiceListParams::CollectionMethod }

      # @!attribute created_at_gte
      #
      #   @return [Time, nil]
      optional :created_at_gte, Time

      # @!attribute created_at_lte
      #
      #   @return [Time, nil]
      optional :created_at_lte, Time

      # @!attribute customer_id
      #
      #   @return [String, nil]
      optional :customer_id, String

      # @!attribute due_at_gte
      #
      #   @return [Time, nil]
      optional :due_at_gte, Time

      # @!attribute due_at_lte
      #
      #   @return [Time, nil]
      optional :due_at_lte, Time

      # @!attribute page_number
      #   Page number. The default is 0.
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Page size. The default is 10 and the maximum is 100.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute status
      #   Repeat the key to match more than one status, for example
      #   `status=open&status=past_due`.
      #
      #   @return [Array<Symbol, Dodopayments::Models::InvoiceListParams::Status>, nil]
      optional :status,
               -> { Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::InvoiceListParams::Status] }

      # @!attribute subscription_id
      #
      #   @return [String, nil]
      optional :subscription_id, String

      # @!attribute tags
      #   Repeat the key to match an invoice that has any one of the tags.
      #
      #   @return [Array<Symbol, Dodopayments::Models::InvoiceListParams::Tag>, nil]
      optional :tags, -> { Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::InvoiceListParams::Tag] }

      # @!attribute total_amount_gte
      #
      #   @return [Integer, nil]
      optional :total_amount_gte, Integer

      # @!attribute total_amount_lte
      #
      #   @return [Integer, nil]
      optional :total_amount_lte, Integer

      # @!method initialize(collection_method: nil, created_at_gte: nil, created_at_lte: nil, customer_id: nil, due_at_gte: nil, due_at_lte: nil, page_number: nil, page_size: nil, status: nil, subscription_id: nil, tags: nil, total_amount_gte: nil, total_amount_lte: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::InvoiceListParams} for more details.
      #
      #   @param collection_method [Symbol, Dodopayments::Models::InvoiceListParams::CollectionMethod]
      #
      #   @param created_at_gte [Time]
      #
      #   @param created_at_lte [Time]
      #
      #   @param customer_id [String]
      #
      #   @param due_at_gte [Time]
      #
      #   @param due_at_lte [Time]
      #
      #   @param page_number [Integer] Page number. The default is 0.
      #
      #   @param page_size [Integer] Page size. The default is 10 and the maximum is 100.
      #
      #   @param status [Array<Symbol, Dodopayments::Models::InvoiceListParams::Status>] Repeat the key to match more than one status, for example `status=open&status=pa
      #
      #   @param subscription_id [String]
      #
      #   @param tags [Array<Symbol, Dodopayments::Models::InvoiceListParams::Tag>] Repeat the key to match an invoice that has any one of the tags.
      #
      #   @param total_amount_gte [Integer]
      #
      #   @param total_amount_lte [Integer]
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      module CollectionMethod
        extend Dodopayments::Internal::Type::Enum

        AUTO_CHARGE = :auto_charge
        MANUAL = :manual

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The `message` of each variant is the label of the invoice document.
      module Status
        extend Dodopayments::Internal::Type::Enum

        OPEN = :open
        PAID = :paid
        VOID = :void
        DRAFT = :draft
        PAST_DUE = :past_due
        UNCOLLECTABLE = :uncollectable

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Tag
        extend Dodopayments::Internal::Type::Enum

        REFUNDED = :refunded
        PARTIALLY_REFUNDED = :partially_refunded
        DISPUTED = :disputed
        PAYMENT_REVERSED = :payment_reversed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
