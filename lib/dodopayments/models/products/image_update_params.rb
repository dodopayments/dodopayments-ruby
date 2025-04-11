# frozen_string_literal: true

module Dodopayments
  module Models
    module Products
      class ImageUpdateParams < Dodopayments::BaseModel
        # @!parse
        #   extend Dodopayments::Type::RequestParameters::Converter
        include Dodopayments::RequestParameters

        # @!attribute force_update
        #
        #   @return [Boolean, nil]
        optional :force_update, Dodopayments::BooleanModel, nil?: true

        # @!parse
        #   # @param force_update [Boolean, nil]
        #   # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(force_update: nil, request_options: {}, **) = super

        # def initialize: (Hash | Dodopayments::BaseModel) -> void
      end
    end
  end
end
