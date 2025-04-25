# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#create
    class SubscriptionCreateResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute customer
      #
      #   @return [Dodopayments::Models::CustomerLimitedDetails]
      required :customer, -> { Dodopayments::Models::CustomerLimitedDetails }

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Dodopayments::Internal::Type::HashOf[String]

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

      # @!attribute payment_link
      #   URL to checkout page
      #
      #   @return [String, nil]
      optional :payment_link, String, nil?: true

      # @!method initialize(customer:, metadata:, recurring_pre_tax_amount:, subscription_id:, client_secret: nil, discount_id: nil, payment_link: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::SubscriptionCreateResponse} for more details.
      #
      #   @param customer [Dodopayments::Models::CustomerLimitedDetails]
      #
      #   @param metadata [Hash{Symbol=>String}]
      #
      #   @param recurring_pre_tax_amount [Integer] Tax will be added to the amount and charged to the customer on each billing cycl
      #   ...
      #
      #   @param subscription_id [String] Unique identifier for the subscription
      #
      #   @param client_secret [String, nil] Client secret used to load Dodo checkout SDK ...
      #
      #   @param discount_id [String, nil] The discount id if discount is applied
      #
      #   @param payment_link [String, nil] URL to checkout page
    end
  end
end
