# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Refunds#create
    class RefundCreateParams < Dodopayments::BaseModel
      # @!parse
      #   extend Dodopayments::Type::RequestParameters::Converter
      include Dodopayments::RequestParameters

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
      #   # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(payment_id:, amount: nil, reason: nil, request_options: {}, **) = super

      # def initialize: (Hash | Dodopayments::BaseModel) -> void
    end
  end
end
