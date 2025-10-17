# frozen_string_literal: true

module Dodopayments
  module Models
    class NewCustomer < Dodopayments::Internal::Type::BaseModel
      # @!attribute email
      #   Email is required for creating a new customer
      #
      #   @return [String]
      required :email, String

      # @!attribute name
      #   Optional full name of the customer. If provided during session creation, it is
      #   persisted and becomes immutable for the session. If omitted here, it can be
      #   provided later via the confirm API.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute phone_number
      #
      #   @return [String, nil]
      optional :phone_number, String, nil?: true

      # @!method initialize(email:, name: nil, phone_number: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::NewCustomer} for more details.
      #
      #   @param email [String] Email is required for creating a new customer
      #
      #   @param name [String, nil] Optional full name of the customer. If provided during session creation,
      #
      #   @param phone_number [String, nil]
    end
  end
end
