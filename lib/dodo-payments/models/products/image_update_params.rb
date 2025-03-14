# frozen_string_literal: true

module DodoPayments
  module Models
    module Products
      class ImageUpdateParams < DodoPayments::BaseModel
        # @!parse
        #   extend DodoPayments::RequestParameters::Converter
        include DodoPayments::RequestParameters

        # @!attribute force_update
        #
        #   @return [Boolean, nil]
        optional :force_update, DodoPayments::BooleanModel, nil?: true

        # @!parse
        #   # @param force_update [Boolean, nil]
        #   # @param request_options [DodoPayments::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(force_update: nil, request_options: {}, **) = super

        # def initialize: (Hash | DodoPayments::BaseModel) -> void
      end
    end
  end
end
