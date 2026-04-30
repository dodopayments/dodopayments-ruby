# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#create
    class SubscriptionCreateResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute addons
      #   Addons associated with this subscription
      #
      #   @return [Array<Dodopayments::Models::AddonCartResponseItem>]
      required :addons, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::AddonCartResponseItem] }

      # @!attribute customer
      #   Customer details associated with this subscription
      #
      #   @return [Dodopayments::Models::CustomerLimitedDetails]
      required :customer, -> { Dodopayments::CustomerLimitedDetails }

      # @!attribute metadata
      #   Additional metadata associated with the subscription
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Dodopayments::Internal::Type::HashOf[String]

      # @!attribute payment_id
      #   First payment id for the subscription
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute recurring_pre_tax_amount
      #   Tax will be added to the amount and charged to the customer on each billing
      #   cycle
      #
      #   @return [Integer]
      required :recurring_pre_tax_amount, Integer

      # @!attribute subscription_id
      #   Unique identifier for the subscription
      #
      #   @return [String]
      required :subscription_id, String

      # @!attribute client_secret
      #   Client secret used to load Dodo checkout SDK NOTE : Dodo checkout SDK will be
      #   coming soon
      #
      #   @return [String, nil]
      optional :client_secret, String, nil?: true

      # @!attribute discount_id
      #   The discount id if discount is applied
      #
      #   @return [String, nil]
      optional :discount_id, String, nil?: true

      # @!attribute expires_on
      #   Expiry timestamp of the payment link
      #
      #   @return [Time, nil]
      optional :expires_on, Time, nil?: true

      # @!attribute one_time_product_cart
      #   One time products associated with the purchase of subscription
      #
      #   @return [Array<Dodopayments::Models::SubscriptionCreateResponse::OneTimeProductCart>, nil]
      optional :one_time_product_cart,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::SubscriptionCreateResponse::OneTimeProductCart] },
               nil?: true

      # @!attribute payment_link
      #   URL to checkout page
      #
      #   @return [String, nil]
      optional :payment_link, String, nil?: true

      # @!method initialize(addons:, customer:, metadata:, payment_id:, recurring_pre_tax_amount:, subscription_id:, client_secret: nil, discount_id: nil, expires_on: nil, one_time_product_cart: nil, payment_link: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::SubscriptionCreateResponse} for more details.
      #
      #   @param addons [Array<Dodopayments::Models::AddonCartResponseItem>] Addons associated with this subscription
      #
      #   @param customer [Dodopayments::Models::CustomerLimitedDetails] Customer details associated with this subscription
      #
      #   @param metadata [Hash{Symbol=>String}] Additional metadata associated with the subscription
      #
      #   @param payment_id [String] First payment id for the subscription
      #
      #   @param recurring_pre_tax_amount [Integer] Tax will be added to the amount and charged to the customer on each billing cycl
      #
      #   @param subscription_id [String] Unique identifier for the subscription
      #
      #   @param client_secret [String, nil] Client secret used to load Dodo checkout SDK
      #
      #   @param discount_id [String, nil] The discount id if discount is applied
      #
      #   @param expires_on [Time, nil] Expiry timestamp of the payment link
      #
      #   @param one_time_product_cart [Array<Dodopayments::Models::SubscriptionCreateResponse::OneTimeProductCart>, nil] One time products associated with the purchase of subscription
      #
      #   @param payment_link [String, nil] URL to checkout page

      class OneTimeProductCart < Dodopayments::Internal::Type::BaseModel
        # @!attribute product_id
        #
        #   @return [String]
        required :product_id, String

        # @!attribute quantity
        #
        #   @return [Integer]
        required :quantity, Integer

        # @!method initialize(product_id:, quantity:)
        #   @param product_id [String]
        #   @param quantity [Integer]
      end
    end
  end
end
