# frozen_string_literal: true

module DodoPayments
  module Models
    module Customers
      module CustomerPortal
        class SessionCreateParams < DodoPayments::BaseModel
          # @!parse
          #   extend DodoPayments::RequestParameters::Converter
          include DodoPayments::RequestParameters

          # @!attribute send_email
          #   If true, will send link to user.
          #
          #   @return [Boolean, nil]
          optional :send_email, DodoPayments::BooleanModel, nil?: true

          # @!parse
          #   # @param send_email [Boolean, nil]
          #   # @param request_options [DodoPayments::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(send_email: nil, request_options: {}, **) = super

          # def initialize: (Hash | DodoPayments::BaseModel) -> void
        end
      end
    end
  end
end
