# frozen_string_literal: true

module DodoPayments
  module Models
    class SubscriptionCreateResponse < DodoPayments::BaseModel
      # @!attribute customer
      #
      #   @return [DodoPayments::Models::SubscriptionCreateResponse::Customer]
      required :customer, -> { DodoPayments::Models::SubscriptionCreateResponse::Customer }

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, DodoPayments::HashOf[String]

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
      #   # @param customer [DodoPayments::Models::SubscriptionCreateResponse::Customer]
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

      # def initialize: (Hash | DodoPayments::BaseModel) -> void

      class Customer < DodoPayments::BaseModel
        # @!attribute customer_id
        #   Unique identifier for the customer
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute email
        #   Email address of the customer
        #
        #   @return [String]
        required :email, String

        # @!attribute name
        #   Full name of the customer
        #
        #   @return [String]
        required :name, String

        # @!parse
        #   # @param customer_id [String]
        #   # @param email [String]
        #   # @param name [String]
        #   #
        #   def initialize(customer_id:, email:, name:, **) = super

        # def initialize: (Hash | DodoPayments::BaseModel) -> void
      end
    end
  end
end
