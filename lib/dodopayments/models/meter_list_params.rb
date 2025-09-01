# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Meters#list
    class MeterListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute archived
      #   List archived meters
      #
      #   @return [Boolean, nil]
      optional :archived, Dodopayments::Internal::Type::Boolean

      # @!attribute page_number
      #   Page number default is 0
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Page size default is 10 max is 100
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(archived: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param archived [Boolean] List archived meters
      #
      #   @param page_number [Integer] Page number default is 0
      #
      #   @param page_size [Integer] Page size default is 10 max is 100
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
