# frozen_string_literal: true

module DodoPayments
  module Models
    class PaymentCreateResponse < DodoPayments::BaseModel
      # @!attribute client_secret
      #   Client secret used to load Dodo checkout SDK NOTE : Dodo checkout SDK will be
      #     coming soon
      #
      #   @return [String]
      required :client_secret, String

      # @!attribute customer
      #
      #   @return [DodoPayments::Models::PaymentCreateResponse::Customer]
      required :customer, -> { DodoPayments::Models::PaymentCreateResponse::Customer }

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, DodoPayments::HashOf[String]

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
      #   @return [Array<DodoPayments::Models::PaymentCreateResponse::ProductCart>, nil]
      optional :product_cart,
               -> { DodoPayments::ArrayOf[DodoPayments::Models::PaymentCreateResponse::ProductCart] },
               nil?: true

      # @!parse
      #   # @param client_secret [String]
      #   # @param customer [DodoPayments::Models::PaymentCreateResponse::Customer]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param payment_id [String]
      #   # @param total_amount [Integer]
      #   # @param discount_id [String, nil]
      #   # @param payment_link [String, nil]
      #   # @param product_cart [Array<DodoPayments::Models::PaymentCreateResponse::ProductCart>, nil]
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

      class ProductCart < DodoPayments::BaseModel
        # @!attribute product_id
        #
        #   @return [String]
        required :product_id, String

        # @!attribute quantity
        #
        #   @return [Integer]
        required :quantity, Integer

        # @!attribute amount
        #   Amount the customer pays if pay_what_you_want is enabled. If disabled then
        #     amount will be ignored
        #
        #   @return [Integer, nil]
        optional :amount, Integer, nil?: true

        # @!parse
        #   # @param product_id [String]
        #   # @param quantity [Integer]
        #   # @param amount [Integer, nil]
        #   #
        #   def initialize(product_id:, quantity:, amount: nil, **) = super

        # def initialize: (Hash | DodoPayments::BaseModel) -> void
      end
    end
  end
end
