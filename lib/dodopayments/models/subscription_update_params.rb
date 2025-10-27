# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#update
    class SubscriptionUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute billing
      #
      #   @return [Dodopayments::Models::BillingAddress, nil]
      optional :billing, -> { Dodopayments::BillingAddress }, nil?: true

      # @!attribute cancel_at_next_billing_date
      #   When set, the subscription will remain active until the end of billing period
      #
      #   @return [Boolean, nil]
      optional :cancel_at_next_billing_date, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute customer_name
      #
      #   @return [String, nil]
      optional :customer_name, String, nil?: true

      # @!attribute disable_on_demand
      #
      #   @return [Dodopayments::Models::SubscriptionUpdateParams::DisableOnDemand, nil]
      optional :disable_on_demand, -> { Dodopayments::SubscriptionUpdateParams::DisableOnDemand }, nil?: true

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::Internal::Type::HashOf[String], nil?: true

      # @!attribute next_billing_date
      #
      #   @return [Time, nil]
      optional :next_billing_date, Time, nil?: true

      # @!attribute status
      #
      #   @return [Symbol, Dodopayments::Models::SubscriptionStatus, nil]
      optional :status, enum: -> { Dodopayments::SubscriptionStatus }, nil?: true

      # @!attribute tax_id
      #
      #   @return [String, nil]
      optional :tax_id, String, nil?: true

      # @!method initialize(billing: nil, cancel_at_next_billing_date: nil, customer_name: nil, disable_on_demand: nil, metadata: nil, next_billing_date: nil, status: nil, tax_id: nil, request_options: {})
      #   @param billing [Dodopayments::Models::BillingAddress, nil]
      #
      #   @param cancel_at_next_billing_date [Boolean, nil] When set, the subscription will remain active until the end of billing period
      #
      #   @param customer_name [String, nil]
      #
      #   @param disable_on_demand [Dodopayments::Models::SubscriptionUpdateParams::DisableOnDemand, nil]
      #
      #   @param metadata [Hash{Symbol=>String}, nil]
      #
      #   @param next_billing_date [Time, nil]
      #
      #   @param status [Symbol, Dodopayments::Models::SubscriptionStatus, nil]
      #
      #   @param tax_id [String, nil]
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      class DisableOnDemand < Dodopayments::Internal::Type::BaseModel
        # @!attribute next_billing_date
        #
        #   @return [Time]
        required :next_billing_date, Time

        # @!method initialize(next_billing_date:)
        #   @param next_billing_date [Time]
      end
    end
  end
end
