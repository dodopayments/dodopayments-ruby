# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::WebhookEvents#retrieve
    class WebhookEventRetrieveParams < Dodopayments::Internal::Type::BaseModel
      # @!parse
      #   extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!parse
      #   # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | Dodopayments::Internal::Type::BaseModel) -> void
    end
  end
end
