# frozen_string_literal: true

module Dodopayments
  module Models
    module Products
      # @see Dodopayments::Resources::Products::Images#update
      class ImageUpdateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute force_update
        #
        #   @return [Boolean, nil]
        optional :force_update, Dodopayments::Internal::Type::Boolean

        # @!method initialize(force_update: nil, request_options: {})
        #   @param force_update [Boolean]
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
