# frozen_string_literal: true

module DodoPayments
  module Models
    class RefundCreateParams < DodoPayments::BaseModel
      # @!parse
      #   extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      # @!attribute payment_id
      #   The unique identifier of the payment to be refunded.
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute amount
      #   The amount to be refunded. Must be non-negative. Optional. Partial refunds are
      #     currently disabled.
      #
      #   @return [Integer, nil]
      optional :amount, Integer, nil?: true

      # @!attribute reason
      #   The reason for the refund, if any. Maximum length is 3000 characters. Optional.
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!parse
      #   # @param payment_id [String]
      #   # @param amount [Integer, nil]
      #   # @param reason [String, nil]
      #   # @param request_options [DodoPayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(payment_id:, amount: nil, reason: nil, request_options: {}, **) = super

      # def initialize: (Hash | DodoPayments::BaseModel) -> void
    end
  end
end
