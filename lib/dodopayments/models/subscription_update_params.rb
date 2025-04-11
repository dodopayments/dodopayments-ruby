# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#update
    class SubscriptionUpdateParams < Dodopayments::Internal::Type::BaseModel
      # @!parse
      #   extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute billing
      #
      #   @return [Dodopayments::Models::BillingAddress, nil]
      optional :billing, -> { Dodopayments::Models::BillingAddress }, nil?: true

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::Internal::Type::HashOf[String], nil?: true

      # @!attribute status
      #
      #   @return [Symbol, Dodopayments::Models::SubscriptionStatus, nil]
      optional :status, enum: -> { Dodopayments::Models::SubscriptionStatus }, nil?: true

      # @!attribute tax_id
      #
      #   @return [String, nil]
      optional :tax_id, String, nil?: true

      # @!parse
      #   # @param billing [Dodopayments::Models::BillingAddress, nil]
      #   # @param metadata [Hash{Symbol=>String}, nil]
      #   # @param status [Symbol, Dodopayments::Models::SubscriptionStatus, nil]
      #   # @param tax_id [String, nil]
      #   # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(billing: nil, metadata: nil, status: nil, tax_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | Dodopayments::Internal::Type::BaseModel) -> void
    end
  end
end
