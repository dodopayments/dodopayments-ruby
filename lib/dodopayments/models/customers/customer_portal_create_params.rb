# frozen_string_literal: true

module Dodopayments
  module Models
    module Customers
      # @see Dodopayments::Resources::Customers::CustomerPortal#create
      class CustomerPortalCreateParams < Dodopayments::Internal::Type::BaseModel
        # @!parse
        #   extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute send_email
        #   If true, will send link to user.
        #
        #   @return [Boolean, nil]
        optional :send_email, Dodopayments::Internal::Type::BooleanModel, nil?: true

        # @!parse
        #   # @param send_email [Boolean, nil]
        #   # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(send_email: nil, request_options: {}, **) = super

        # def initialize: (Hash | Dodopayments::Internal::Type::BaseModel) -> void
      end
    end
  end
end
