# frozen_string_literal: true

module DodoPayments
  module Models
    class SubscriptionUpdateParams < DodoPayments::BaseModel
      # @!parse
      #   extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, DodoPayments::HashOf[String], nil?: true

      # @!attribute status
      #
      #   @return [Symbol, DodoPayments::Models::SubscriptionUpdateParams::Status, nil]
      optional :status, enum: -> { DodoPayments::Models::SubscriptionUpdateParams::Status }, nil?: true

      # @!parse
      #   # @param metadata [Hash{Symbol=>String}, nil]
      #   # @param status [Symbol, DodoPayments::Models::SubscriptionUpdateParams::Status, nil]
      #   # @param request_options [DodoPayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(metadata: nil, status: nil, request_options: {}, **) = super

      # def initialize: (Hash | DodoPayments::BaseModel) -> void

      # @abstract
      class Status < DodoPayments::Enum
        PENDING = :pending
        ACTIVE = :active
        ON_HOLD = :on_hold
        PAUSED = :paused
        CANCELLED = :cancelled
        FAILED = :failed
        EXPIRED = :expired

        finalize!
      end
    end
  end
end
