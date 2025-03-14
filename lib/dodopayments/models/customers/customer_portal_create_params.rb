# frozen_string_literal: true

module Dodopayments
  module Models
    module Customers
      class CustomerPortalCreateParams < Dodopayments::BaseModel
        # @!parse
        #   extend Dodopayments::RequestParameters::Converter
        include Dodopayments::RequestParameters

        # @!attribute send_email
        #   If true, will send link to user.
        #
        #   @return [Boolean, nil]
        optional :send_email, Dodopayments::BooleanModel, nil?: true

        # @!parse
        #   # @param send_email [Boolean, nil]
        #   # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(send_email: nil, request_options: {}, **) = super

        # def initialize: (Hash | Dodopayments::BaseModel) -> void
      end
    end
  end
end
