# frozen_string_literal: true

module Dodopayments
  module Models
    class NewCustomer < Dodopayments::Internal::Type::BaseModel
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

      # @!method initialize(email:, name:, phone_number: nil)
      #   @param email [String]
      #   @param name [String]
      #   @param phone_number [String, nil]
    end
  end
end
