# frozen_string_literal: true

module Dodopayments
  module Models
    class CreateNewCustomer < Dodopayments::BaseModel
      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute [r] create_new_customer
      #   When false, the most recently created customer object with the given email is
      #     used if exists. When true, a new customer object is always created False by
      #     default
      #
      #   @return [Boolean, nil]
      optional :create_new_customer, Dodopayments::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :create_new_customer

      # @!attribute phone_number
      #
      #   @return [String, nil]
      optional :phone_number, String, nil?: true

      # @!parse
      #   # @param email [String]
      #   # @param name [String]
      #   # @param create_new_customer [Boolean]
      #   # @param phone_number [String, nil]
      #   #
      #   def initialize(email:, name:, create_new_customer: nil, phone_number: nil, **) = super

      # def initialize: (Hash | Dodopayments::BaseModel) -> void
    end
  end
end
