# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Products#delete
    class ProductDeleteParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
