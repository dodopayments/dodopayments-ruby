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
      #   @return [Hash{Symbol=>String, Float, Boolean}]
      required :metadata, -> { Dodopayments::Internal::Type::HashOf[union: Dodopayments::MetadataItem] }

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
      #   @deprecated Use `discounts` instead.
      #
      #   DEPRECATED: Use discount_ids instead. Returns the first discount's ID if
      #   present.
      #
      #   @return [String, nil]
      optional :discount_id, String, nil?: true

      # @!attribute discount_ids
      #   All stacked discount IDs applied, in order of application
      #
      #   @return [Array<String>, nil]
      optional :discount_ids, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

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

      # @!attribute trial_amount
      #   Per-unit trial amount after discounts, in the price currency's minor units
      #   (pre-quantity, pre-tax). Null for a free trial or no trial.
      #
      #   @return [Integer, nil]
      optional :trial_amount, Integer, nil?: true

      # @!method initialize(addons:, customer:, metadata:, payment_id:, recurring_pre_tax_amount:, subscription_id:, client_secret: nil, discount_id: nil, discount_ids: nil, expires_on: nil, one_time_product_cart: nil, payment_link: nil, trial_amount: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::SubscriptionCreateResponse} for more details.
      #
      #   @param addons [Array<Dodopayments::Models::AddonCartResponseItem>] Addons associated with this subscription
      #
      #   @param customer [Dodopayments::Models::CustomerLimitedDetails] Customer details associated with this subscription
      #
      #   @param metadata [Hash{Symbol=>String, Float, Boolean}] Additional metadata associated with the subscription
      #
      #   @param payment_id [String] First payment id for the subscription
      #
      #   @param recurring_pre_tax_amount [Integer] Tax will be added to the amount and charged to the customer on each billing cycl
      #
      #   @param subscription_id [String] Unique identifier for the subscription
      #
      #   @param client_secret [String, nil] Client secret used to load Dodo checkout SDK
      #
      #   @param discount_id [String, nil] DEPRECATED: Use discount_ids instead. Returns the first discount's ID if present
      #
      #   @param discount_ids [Array<String>, nil] All stacked discount IDs applied, in order of application
      #
      #   @param expires_on [Time, nil] Expiry timestamp of the payment link
      #
      #   @param one_time_product_cart [Array<Dodopayments::Models::SubscriptionCreateResponse::OneTimeProductCart>, nil] One time products associated with the purchase of subscription
      #
      #   @param payment_link [String, nil] URL to checkout page
      #
      #   @param trial_amount [Integer, nil] Per-unit trial amount after discounts, in the price currency's minor units

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
