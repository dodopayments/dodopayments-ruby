# frozen_string_literal: true

module DodoPayments
  module Models
    class SubscriptionCreateParams < DodoPayments::BaseModel
      # @!parse
      #   extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      # @!attribute billing
      #
      #   @return [DodoPayments::Models::SubscriptionCreateParams::Billing]
      required :billing, -> { DodoPayments::Models::SubscriptionCreateParams::Billing }

      # @!attribute customer
      #
      #   @return [DodoPayments::Models::SubscriptionCreateParams::Customer::AttachExistingCustomer, DodoPayments::Models::SubscriptionCreateParams::Customer::CreateNewCustomer]
      required :customer, union: -> { DodoPayments::Models::SubscriptionCreateParams::Customer }

      # @!attribute product_id
      #   Unique identifier of the product to subscribe to
      #
      #   @return [String]
      required :product_id, String

      # @!attribute quantity
      #   Number of units to subscribe for. Must be at least 1.
      #
      #   @return [Integer]
      required :quantity, Integer

      # @!attribute discount_code
      #   Discount Code to apply to the subscription
      #
      #   @return [String, nil]
      optional :discount_code, String, nil?: true

      # @!attribute [r] metadata
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, DodoPayments::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute payment_link
      #   If true, generates a payment link. Defaults to false if not specified.
      #
      #   @return [Boolean, nil]
      optional :payment_link, DodoPayments::BooleanModel, nil?: true

      # @!attribute return_url
      #   Optional URL to redirect after successful subscription creation
      #
      #   @return [String, nil]
      optional :return_url, String, nil?: true

      # @!attribute tax_id
      #   Tax ID in case the payment is B2B. If tax id validation fails the payment
      #     creation will fail
      #
      #   @return [String, nil]
      optional :tax_id, String, nil?: true

      # @!attribute trial_period_days
      #   Optional trial period in days If specified, this value overrides the trial
      #     period set in the product's price Must be between 0 and 10000 days
      #
      #   @return [Integer, nil]
      optional :trial_period_days, Integer, nil?: true

      # @!parse
      #   # @param billing [DodoPayments::Models::SubscriptionCreateParams::Billing]
      #   # @param customer [DodoPayments::Models::SubscriptionCreateParams::Customer::AttachExistingCustomer, DodoPayments::Models::SubscriptionCreateParams::Customer::CreateNewCustomer]
      #   # @param product_id [String]
      #   # @param quantity [Integer]
      #   # @param discount_code [String, nil]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param payment_link [Boolean, nil]
      #   # @param return_url [String, nil]
      #   # @param tax_id [String, nil]
      #   # @param trial_period_days [Integer, nil]
      #   # @param request_options [DodoPayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     billing:,
      #     customer:,
      #     product_id:,
      #     quantity:,
      #     discount_code: nil,
      #     metadata: nil,
      #     payment_link: nil,
      #     return_url: nil,
      #     tax_id: nil,
      #     trial_period_days: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | DodoPayments::BaseModel) -> void

      class Billing < DodoPayments::BaseModel
        # @!attribute city
        #   City name
        #
        #   @return [String]
        required :city, String

        # @!attribute country
        #   ISO country code alpha2 variant
        #
        #   @return [Symbol, DodoPayments::Models::Misc::CountryCode]
        required :country, enum: -> { DodoPayments::Models::Misc::CountryCode }

        # @!attribute state
        #   State or province name
        #
        #   @return [String]
        required :state, String

        # @!attribute street
        #   Street address including house number and unit/apartment if applicable
        #
        #   @return [String]
        required :street, String

        # @!attribute zipcode
        #   Postal code or ZIP code
        #
        #   @return [String]
        required :zipcode, String

        # @!parse
        #   # @param city [String]
        #   # @param country [Symbol, DodoPayments::Models::Misc::CountryCode]
        #   # @param state [String]
        #   # @param street [String]
        #   # @param zipcode [String]
        #   #
        #   def initialize(city:, country:, state:, street:, zipcode:, **) = super

        # def initialize: (Hash | DodoPayments::BaseModel) -> void
      end

      # @abstract
      class Customer < DodoPayments::Union
        variant -> { DodoPayments::Models::SubscriptionCreateParams::Customer::AttachExistingCustomer }

        variant -> { DodoPayments::Models::SubscriptionCreateParams::Customer::CreateNewCustomer }

        class AttachExistingCustomer < DodoPayments::BaseModel
          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!parse
          #   # @param customer_id [String]
          #   #
          #   def initialize(customer_id:, **) = super

          # def initialize: (Hash | DodoPayments::BaseModel) -> void
        end

        class CreateNewCustomer < DodoPayments::BaseModel
          # @!attribute email
          #
          #   @return [String]
          required :email, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute [r] create_new_customer
          #   When false, the most recently created customer object with the given email is
          #     used if exists. When true, a new customer object is always created False by
          #     default
          #
          #   @return [Boolean, nil]
          optional :create_new_customer, DodoPayments::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :create_new_customer

          # @!attribute phone_number
          #
          #   @return [String, nil]
          optional :phone_number, String, nil?: true

          # @!parse
          #   # @param email [String]
          #   # @param name [String]
          #   # @param create_new_customer [Boolean]
          #   # @param phone_number [String, nil]
          #   #
          #   def initialize(email:, name:, create_new_customer: nil, phone_number: nil, **) = super

          # def initialize: (Hash | DodoPayments::BaseModel) -> void
        end

        # @!parse
        #   class << self
        #     # @return [Array(DodoPayments::Models::SubscriptionCreateParams::Customer::AttachExistingCustomer, DodoPayments::Models::SubscriptionCreateParams::Customer::CreateNewCustomer)]
        #     def variants; end
        #   end
      end
    end
  end
end
