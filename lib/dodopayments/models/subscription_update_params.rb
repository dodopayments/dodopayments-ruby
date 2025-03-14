# frozen_string_literal: true

module Dodopayments
  module Models
    class SubscriptionUpdateParams < Dodopayments::BaseModel
      # @!parse
      #   extend Dodopayments::RequestParameters::Converter
      include Dodopayments::RequestParameters

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::HashOf[String], nil?: true

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

      # def initialize: (Hash | Dodopayments::BaseModel) -> void
    end
  end
end
