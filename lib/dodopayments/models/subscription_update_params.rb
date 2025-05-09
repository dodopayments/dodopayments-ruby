# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#update
    class SubscriptionUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute billing
      #
      #   @return [Dodopayments::BillingAddress, nil]
      optional :billing, -> { Dodopayments::BillingAddress }, nil?: true

      # @!attribute disable_on_demand
      #
      #   @return [Dodopayments::SubscriptionUpdateParams::DisableOnDemand, nil]
      optional :disable_on_demand, -> { Dodopayments::SubscriptionUpdateParams::DisableOnDemand }, nil?: true

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::Internal::Type::HashOf[String], nil?: true

      # @!attribute status
      #
      #   @return [Symbol, Dodopayments::SubscriptionStatus, nil]
      optional :status, enum: -> { Dodopayments::SubscriptionStatus }, nil?: true

      # @!attribute tax_id
      #
      #   @return [String, nil]
      optional :tax_id, String, nil?: true

      # @!method initialize(billing: nil, disable_on_demand: nil, metadata: nil, status: nil, tax_id: nil, request_options: {})
      #   @param billing [Dodopayments::BillingAddress, nil]
      #   @param disable_on_demand [Dodopayments::SubscriptionUpdateParams::DisableOnDemand, nil]
      #   @param metadata [Hash{Symbol=>String}, nil]
      #   @param status [Symbol, Dodopayments::SubscriptionStatus, nil]
      #   @param tax_id [String, nil]
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
