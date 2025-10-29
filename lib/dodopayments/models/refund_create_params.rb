# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Refunds#create
    class RefundCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute payment_id
      #   The unique identifier of the payment to be refunded.
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute items
      #   Partially Refund an Individual Item
      #
      #   @return [Array<Dodopayments::Models::RefundCreateParams::Item>, nil]
      optional :items,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::RefundCreateParams::Item] },
               nil?: true

      # @!attribute metadata
      #   Additional metadata associated with the refund.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::Internal::Type::HashOf[String]

      # @!attribute reason
      #   The reason for the refund, if any. Maximum length is 3000 characters. Optional.
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!method initialize(payment_id:, items: nil, metadata: nil, reason: nil, request_options: {})
      #   @param payment_id [String] The unique identifier of the payment to be refunded.
      #
      #   @param items [Array<Dodopayments::Models::RefundCreateParams::Item>, nil] Partially Refund an Individual Item
      #
      #   @param metadata [Hash{Symbol=>String}] Additional metadata associated with the refund.
      #
      #   @param reason [String, nil] The reason for the refund, if any. Maximum length is 3000 characters. Optional.
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      class Item < Dodopayments::Internal::Type::BaseModel
        # @!attribute item_id
        #   The id of the item (i.e. `product_id` or `addon_id`)
        #
        #   @return [String]
        required :item_id, String

        # @!attribute amount
        #   The amount to refund. if None the whole item is refunded
        #
        #   @return [Integer, nil]
        optional :amount, Integer, nil?: true

        # @!attribute tax_inclusive
        #   Specify if tax is inclusive of the refund. Default true.
        #
        #   @return [Boolean, nil]
        optional :tax_inclusive, Dodopayments::Internal::Type::Boolean

        # @!method initialize(item_id:, amount: nil, tax_inclusive: nil)
        #   @param item_id [String] The id of the item (i.e. `product_id` or `addon_id`)
        #
        #   @param amount [Integer, nil] The amount to refund. if None the whole item is refunded
        #
        #   @param tax_inclusive [Boolean] Specify if tax is inclusive of the refund. Default true.
      end
    end
  end
end
