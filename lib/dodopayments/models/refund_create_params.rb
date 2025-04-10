# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Refunds#create
    class RefundCreateParams < Dodopayments::Internal::Type::BaseModel
      # @!parse
      #   extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute payment_id
      #   The unique identifier of the payment to be refunded.
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute reason
      #   The reason for the refund, if any. Maximum length is 3000 characters. Optional.
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!parse
      #   # @param payment_id [String]
      #   # @param reason [String, nil]
      #   # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(payment_id:, reason: nil, request_options: {}, **) = super

      # def initialize: (Hash | Dodopayments::Internal::Type::BaseModel) -> void
    end
  end
end
