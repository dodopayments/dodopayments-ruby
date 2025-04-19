# frozen_string_literal: true

module Dodopayments
  module Models
    class CreateNewCustomer < Dodopayments::Internal::Type::BaseModel
      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute create_new_customer
      #   When false, the most recently created customer object with the given email is
      #   used if exists. When true, a new customer object is always created False by
      #   default
      #
      #   @return [Boolean, nil]
      optional :create_new_customer, Dodopayments::Internal::Type::Boolean

      # @!attribute phone_number
      #
      #   @return [String, nil]
      optional :phone_number, String, nil?: true

      # @!method initialize(email:, name:, create_new_customer: nil, phone_number: nil)
      #   @param email [String]
      #   @param name [String]
      #   @param create_new_customer [Boolean]
      #   @param phone_number [String, nil]
    end
  end
end
