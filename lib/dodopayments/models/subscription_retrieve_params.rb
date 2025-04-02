# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#retrieve
    class SubscriptionRetrieveParams < Dodopayments::BaseModel
      # @!parse
      #   extend Dodopayments::Type::RequestParameters::Converter
      include Dodopayments::RequestParameters

      # @!parse
      #   # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | Dodopayments::BaseModel) -> void
    end
  end
end
