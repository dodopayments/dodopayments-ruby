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

      # @!attribute preferred_locale
      #   The language of the customer emails, a code from `GET /locales`. A value
      #   replaces the stored language of the customer, also for an existing customer.
      #   Send a value only to change that language on purpose. With no value, the stored
      #   language stays.
      #
      #   @return [Symbol, Dodopayments::Models::Locale, nil]
      optional :preferred_locale, enum: -> { Dodopayments::Locale }, nil?: true

      # @!method initialize(email:, name:, create_new_customer: nil, phone_number: nil, preferred_locale: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::CreateNewCustomer} for more details.
      #
      #   @param email [String]
      #
      #   @param name [String]
      #
      #   @param create_new_customer [Boolean] When false, the most recently created customer object with the given email is us
      #
      #   @param phone_number [String, nil]
      #
      #   @param preferred_locale [Symbol, Dodopayments::Models::Locale, nil] The language of the customer emails, a code from `GET /locales`. A value replace
    end
  end
end
