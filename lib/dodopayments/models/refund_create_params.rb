# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Refunds#create
    class RefundCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
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

      # @!method initialize(payment_id:, reason: nil, request_options: {})
      #   @param payment_id [String] The unique identifier of the payment to be refunded.
      #
      #   @param reason [String, nil] The reason for the refund, if any. Maximum length is 3000 characters. Optional.
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
