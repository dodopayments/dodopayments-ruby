# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Brands#list
    class BrandListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute include_archived
      #   Set to true to also list archived brands. Default false.
      #
      #   @return [Boolean, nil]
      optional :include_archived, Dodopayments::Internal::Type::Boolean

      # @!method initialize(include_archived: nil, request_options: {})
      #   @param include_archived [Boolean] Set to true to also list archived brands. Default false.
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
