# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Payments#retrieve_line_items
    class PaymentRetrieveLineItemsResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Models::Currency]
      required :currency, enum: -> { Dodopayments::Currency }

      # @!attribute items
      #
      #   @return [Array<Dodopayments::Models::PaymentRetrieveLineItemsResponse::Item>]
      required :items,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::PaymentRetrieveLineItemsResponse::Item] }

      # @!method initialize(currency:, items:)
      #   @param currency [Symbol, Dodopayments::Models::Currency]
      #   @param items [Array<Dodopayments::Models::PaymentRetrieveLineItemsResponse::Item>]

      class Item < Dodopayments::Internal::Type::BaseModel
        # @!attribute amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute items_id
        #
        #   @return [String]
        required :items_id, String

        # @!attribute refundable_amount
        #
        #   @return [Integer]
        required :refundable_amount, Integer

        # @!attribute tax
        #
        #   @return [Integer]
        required :tax, Integer

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!method initialize(amount:, items_id:, refundable_amount:, tax:, description: nil, name: nil)
        #   @param amount [Integer]
        #   @param items_id [String]
        #   @param refundable_amount [Integer]
        #   @param tax [Integer]
        #   @param description [String, nil]
        #   @param name [String, nil]
      end
    end
  end
end
