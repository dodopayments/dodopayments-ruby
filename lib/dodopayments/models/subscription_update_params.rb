# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#update
    class SubscriptionUpdateParams < Dodopayments::Internal::Type::BaseModel
      # @!parse
      #   extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::Internal::Type::HashOf[String], nil?: true

      # @!attribute status
      #
      #   @return [Symbol, Dodopayments::Models::SubscriptionStatus, nil]
      optional :status, enum: -> { Dodopayments::Models::SubscriptionStatus }, nil?: true

      # @!parse
      #   # @param metadata [Hash{Symbol=>String}, nil]
      #   # @param status [Symbol, Dodopayments::Models::SubscriptionStatus, nil]
      #   # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(metadata: nil, status: nil, request_options: {}, **) = super

      # def initialize: (Hash | Dodopayments::Internal::Type::BaseModel) -> void
    end
  end
end
