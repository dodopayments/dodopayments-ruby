# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Payments#create
    class PaymentCreateResponse < Dodopayments::BaseModel
      # @!attribute client_secret
      #   Client secret used to load Dodo checkout SDK NOTE : Dodo checkout SDK will be
      #     coming soon
      #
      #   @return [String]
      required :client_secret, String

      # @!attribute customer
      #
      #   @return [Dodopayments::Models::CustomerLimitedDetails]
      required :customer, -> { Dodopayments::Models::CustomerLimitedDetails }

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Dodopayments::HashOf[String]

      # @!attribute payment_id
      #   Unique identifier for the payment
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute total_amount
      #   Total amount of the payment in smallest currency unit (e.g. cents)
      #
      #   @return [Integer]
      required :total_amount, Integer

      # @!attribute discount_id
      #   The discount id if discount is applied
      #
      #   @return [String, nil]
      optional :discount_id, String, nil?: true

      # @!attribute payment_link
      #   Optional URL to a hosted payment page
      #
      #   @return [String, nil]
      optional :payment_link, String, nil?: true

      # @!attribute product_cart
      #   Optional list of products included in the payment
      #
      #   @return [Array<Dodopayments::Models::OneTimeProductCartItem>, nil]
      optional :product_cart,
               -> { Dodopayments::ArrayOf[Dodopayments::Models::OneTimeProductCartItem] },
               nil?: true

      # @!parse
      #   # @param client_secret [String]
      #   # @param customer [Dodopayments::Models::CustomerLimitedDetails]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param payment_id [String]
      #   # @param total_amount [Integer]
      #   # @param discount_id [String, nil]
      #   # @param payment_link [String, nil]
      #   # @param product_cart [Array<Dodopayments::Models::OneTimeProductCartItem>, nil]
      #   #
      #   def initialize(
      #     client_secret:,
      #     customer:,
      #     metadata:,
      #     payment_id:,
      #     total_amount:,
      #     discount_id: nil,
      #     payment_link: nil,
      #     product_cart: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Dodopayments::BaseModel) -> void
    end
  end
end
