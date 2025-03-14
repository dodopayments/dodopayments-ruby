# frozen_string_literal: true

module Dodopayments
  module Models
    class SubscriptionCreateResponse < Dodopayments::BaseModel
      # @!attribute customer
      #
      #   @return [Dodopayments::Models::CustomerLimitedDetails]
      required :customer, -> { Dodopayments::Models::CustomerLimitedDetails }

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Dodopayments::HashOf[String]

      # @!attribute recurring_pre_tax_amount
      #   Tax will be added to the amount and charged to the customer on each billing
      #     cycle
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
      #     coming soon
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

      # @!parse
      #   # @param customer [Dodopayments::Models::CustomerLimitedDetails]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param recurring_pre_tax_amount [Integer]
      #   # @param subscription_id [String]
      #   # @param client_secret [String, nil]
      #   # @param discount_id [String, nil]
      #   # @param payment_link [String, nil]
      #   #
      #   def initialize(
      #     customer:,
      #     metadata:,
      #     recurring_pre_tax_amount:,
      #     subscription_id:,
      #     client_secret: nil,
      #     discount_id: nil,
      #     payment_link: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Dodopayments::BaseModel) -> void
    end
  end
end
