# frozen_string_literal: true

module Dodopayments
  module Models
    module Invoices
      # @see Dodopayments::Resources::Invoices::Payments#retrieve
      class PaymentRetrieveParams < Dodopayments::Internal::Type::BaseModel
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
end
