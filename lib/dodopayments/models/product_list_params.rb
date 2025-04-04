# frozen_string_literal: true

module Dodopayments
  module Models
    class ProductListParams < Dodopayments::BaseModel
      # @!parse
      #   extend Dodopayments::RequestParameters::Converter
      include Dodopayments::RequestParameters

      # @!attribute [r] archived
      #   List archived products
      #
      #   @return [Boolean, nil]
      optional :archived, Dodopayments::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :archived

      # @!attribute page_number
      #   Page number default is 0
      #
      #   @return [Integer, nil]
      optional :page_number, Integer, nil?: true

      # @!attribute page_size
      #   Page size default is 10 max is 100
      #
      #   @return [Integer, nil]
      optional :page_size, Integer, nil?: true

      # @!attribute recurring
      #   Filter products by pricing type:
      #
      #     - `true`: Show only recurring pricing products (e.g. subscriptions)
      #     - `false`: Show only one-time price products
      #     - `null` or absent: Show both types of products
      #
      #   @return [Boolean, nil]
      optional :recurring, Dodopayments::BooleanModel, nil?: true

      # @!parse
      #   # @param archived [Boolean]
      #   # @param page_number [Integer, nil]
      #   # @param page_size [Integer, nil]
      #   # @param recurring [Boolean, nil]
      #   # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(archived: nil, page_number: nil, page_size: nil, recurring: nil, request_options: {}, **) = super

      # def initialize: (Hash | Dodopayments::BaseModel) -> void
    end
  end
end
