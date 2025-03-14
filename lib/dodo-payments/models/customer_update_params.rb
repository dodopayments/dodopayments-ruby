# frozen_string_literal: true

module DodoPayments
  module Models
    class CustomerUpdateParams < DodoPayments::BaseModel
      # @!parse
      #   extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute phone_number
      #
      #   @return [String, nil]
      optional :phone_number, String, nil?: true

      # @!parse
      #   # @param name [String, nil]
      #   # @param phone_number [String, nil]
      #   # @param request_options [DodoPayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(name: nil, phone_number: nil, request_options: {}, **) = super

      # def initialize: (Hash | DodoPayments::BaseModel) -> void
    end
  end
end
