# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#start_trial
    class SubscriptionStartTrialParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute collection_method
      #
      #   @return [Symbol, Dodopayments::Models::CollectionMethod]
      required :collection_method, enum: -> { Dodopayments::CollectionMethod }

      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Models::Currency]
      required :currency, enum: -> { Dodopayments::Currency }

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute product_id
      #   A recurring product.
      #
      #   @return [String]
      required :product_id, String

      # @!attribute billing_address
      #   The billing address of an invoice request.
      #
      #   @return [Dodopayments::Models::SubscriptionStartTrialParams::BillingAddress, nil]
      optional :billing_address, -> { Dodopayments::SubscriptionStartTrialParams::BillingAddress }, nil?: true

      # @!attribute payment_method_id
      #   A saved card of the customer. Automatic charge needs it.
      #
      #   @return [String, nil]
      optional :payment_method_id, String, nil?: true

      # @!attribute payment_terms
      #   The terms of the invoices after the trial.
      #
      #   @return [Dodopayments::Models::SubscriptionStartTrialParams::PaymentTerms::DueOnReceipt, Dodopayments::Models::SubscriptionStartTrialParams::PaymentTerms::Net, nil]
      optional :payment_terms,
               union: -> { Dodopayments::SubscriptionStartTrialParams::PaymentTerms },
               nil?: true

      # @!attribute quantity
      #
      #   @return [Integer, nil]
      optional :quantity, Integer

      # @!attribute review_required
      #   `true` keeps each renewal draft for review before it finalises.
      #
      #   @return [Boolean, nil]
      optional :review_required, Dodopayments::Internal::Type::Boolean

      # @!attribute tax_id
      #
      #   @return [String, nil]
      optional :tax_id, String, nil?: true

      # @!attribute trial_period_days
      #   1 to 730 days. When this is not set, the product trial applies and the trial
      #   misuse check runs.
      #
      #   @return [Integer, nil]
      optional :trial_period_days, Integer, nil?: true

      # @!method initialize(collection_method:, currency:, customer_id:, product_id:, billing_address: nil, payment_method_id: nil, payment_terms: nil, quantity: nil, review_required: nil, tax_id: nil, trial_period_days: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::SubscriptionStartTrialParams} for more details.
      #
      #   @param collection_method [Symbol, Dodopayments::Models::CollectionMethod]
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency]
      #
      #   @param customer_id [String]
      #
      #   @param product_id [String] A recurring product.
      #
      #   @param billing_address [Dodopayments::Models::SubscriptionStartTrialParams::BillingAddress, nil] The billing address of an invoice request.
      #
      #   @param payment_method_id [String, nil] A saved card of the customer. Automatic charge needs it.
      #
      #   @param payment_terms [Dodopayments::Models::SubscriptionStartTrialParams::PaymentTerms::DueOnReceipt, Dodopayments::Models::SubscriptionStartTrialParams::PaymentTerms::Net, nil] The terms of the invoices after the trial.
      #
      #   @param quantity [Integer]
      #
      #   @param review_required [Boolean] `true` keeps each renewal draft for review before it finalises.
      #
      #   @param tax_id [String, nil]
      #
      #   @param trial_period_days [Integer, nil] 1 to 730 days. When this is not set, the product trial applies and the trial mis
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      class BillingAddress < Dodopayments::Internal::Type::BaseModel
        # @!attribute country
        #   Two-letter ISO country code (ISO 3166-1 alpha-2)
        #
        #   @return [Symbol, Dodopayments::Models::CountryCode]
        required :country, enum: -> { Dodopayments::CountryCode }

        # @!attribute city
        #
        #   @return [String, nil]
        optional :city, String, nil?: true

        # @!attribute state
        #
        #   @return [String, nil]
        optional :state, String, nil?: true

        # @!attribute street
        #
        #   @return [String, nil]
        optional :street, String, nil?: true

        # @!attribute zipcode
        #
        #   @return [String, nil]
        optional :zipcode, String, nil?: true

        # @!method initialize(country:, city: nil, state: nil, street: nil, zipcode: nil)
        #   The billing address of an invoice request.
        #
        #   @param country [Symbol, Dodopayments::Models::CountryCode] Two-letter ISO country code (ISO 3166-1 alpha-2)
        #
        #   @param city [String, nil]
        #
        #   @param state [String, nil]
        #
        #   @param street [String, nil]
        #
        #   @param zipcode [String, nil]
      end

      # The terms of the invoices after the trial.
      module PaymentTerms
        extend Dodopayments::Internal::Type::Union

        discriminator :type

        variant :due_on_receipt, -> { Dodopayments::SubscriptionStartTrialParams::PaymentTerms::DueOnReceipt }

        variant :net, -> { Dodopayments::SubscriptionStartTrialParams::PaymentTerms::Net }

        class DueOnReceipt < Dodopayments::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :due_on_receipt]
          required :type, const: :due_on_receipt

          # @!method initialize(type: :due_on_receipt)
          #   @param type [Symbol, :due_on_receipt]
        end

        class Net < Dodopayments::Internal::Type::BaseModel
          # @!attribute days
          #
          #   @return [Integer]
          required :days, Integer

          # @!attribute type
          #
          #   @return [Symbol, :net]
          required :type, const: :net

          # @!method initialize(days:, type: :net)
          #   @param days [Integer]
          #   @param type [Symbol, :net]
        end

        # @!method self.variants
        #   @return [Array(Dodopayments::Models::SubscriptionStartTrialParams::PaymentTerms::DueOnReceipt, Dodopayments::Models::SubscriptionStartTrialParams::PaymentTerms::Net)]
      end
    end
  end
end
