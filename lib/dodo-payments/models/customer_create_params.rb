# frozen_string_literal: true

module DodoPayments
  module Models
    class CustomerCreateParams < DodoPayments::BaseModel
      # @!parse
      #   extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute phone_number
      #
      #   @return [String, nil]
      optional :phone_number, String, nil?: true

      # @!parse
      #   # @param email [String]
      #   # @param name [String]
      #   # @param phone_number [String, nil]
      #   # @param request_options [DodoPayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(email:, name:, phone_number: nil, request_options: {}, **) = super

      # def initialize: (Hash | DodoPayments::BaseModel) -> void
    end
  end
end
