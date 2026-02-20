# frozen_string_literal: true

module Dodopayments
  module Models
    class CheckoutSessionFlags < Dodopayments::Internal::Type::BaseModel
      # @!attribute allow_currency_selection
      #   if customer is allowed to change currency, set it to true
      #
      #   Default is true
      #
      #   @return [Boolean, nil]
      optional :allow_currency_selection, Dodopayments::Internal::Type::Boolean

      # @!attribute allow_customer_editing_city
      #
      #   @return [Boolean, nil]
      optional :allow_customer_editing_city, Dodopayments::Internal::Type::Boolean

      # @!attribute allow_customer_editing_country
      #
      #   @return [Boolean, nil]
      optional :allow_customer_editing_country, Dodopayments::Internal::Type::Boolean

      # @!attribute allow_customer_editing_email
      #
      #   @return [Boolean, nil]
      optional :allow_customer_editing_email, Dodopayments::Internal::Type::Boolean

      # @!attribute allow_customer_editing_name
      #
      #   @return [Boolean, nil]
      optional :allow_customer_editing_name, Dodopayments::Internal::Type::Boolean

      # @!attribute allow_customer_editing_state
      #
      #   @return [Boolean, nil]
      optional :allow_customer_editing_state, Dodopayments::Internal::Type::Boolean

      # @!attribute allow_customer_editing_street
      #
      #   @return [Boolean, nil]
      optional :allow_customer_editing_street, Dodopayments::Internal::Type::Boolean

      # @!attribute allow_customer_editing_tax_id
      #
      #   @return [Boolean, nil]
      optional :allow_customer_editing_tax_id, Dodopayments::Internal::Type::Boolean

      # @!attribute allow_customer_editing_zipcode
      #
      #   @return [Boolean, nil]
      optional :allow_customer_editing_zipcode, Dodopayments::Internal::Type::Boolean

      # @!attribute allow_discount_code
      #   If the customer is allowed to apply discount code, set it to true.
      #
      #   Default is true
      #
      #   @return [Boolean, nil]
      optional :allow_discount_code, Dodopayments::Internal::Type::Boolean

      # @!attribute allow_phone_number_collection
      #   If phone number is collected from customer, set it to rue
      #
      #   Default is true
      #
      #   @return [Boolean, nil]
      optional :allow_phone_number_collection, Dodopayments::Internal::Type::Boolean

      # @!attribute allow_tax_id
      #   If the customer is allowed to add tax id, set it to true
      #
      #   Default is true
      #
      #   @return [Boolean, nil]
      optional :allow_tax_id, Dodopayments::Internal::Type::Boolean

      # @!attribute always_create_new_customer
      #   Set to true if a new customer object should be created. By default email is used
      #   to find an existing customer to attach the session to
      #
      #   Default is false
      #
      #   @return [Boolean, nil]
      optional :always_create_new_customer, Dodopayments::Internal::Type::Boolean

      # @!attribute redirect_immediately
      #   If true, redirects the customer immediately after payment completion
      #
      #   Default is false
      #
      #   @return [Boolean, nil]
      optional :redirect_immediately, Dodopayments::Internal::Type::Boolean

      # @!method initialize(allow_currency_selection: nil, allow_customer_editing_city: nil, allow_customer_editing_country: nil, allow_customer_editing_email: nil, allow_customer_editing_name: nil, allow_customer_editing_state: nil, allow_customer_editing_street: nil, allow_customer_editing_tax_id: nil, allow_customer_editing_zipcode: nil, allow_discount_code: nil, allow_phone_number_collection: nil, allow_tax_id: nil, always_create_new_customer: nil, redirect_immediately: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::CheckoutSessionFlags} for more details.
      #
      #   @param allow_currency_selection [Boolean] if customer is allowed to change currency, set it to true
      #
      #   @param allow_customer_editing_city [Boolean]
      #
      #   @param allow_customer_editing_country [Boolean]
      #
      #   @param allow_customer_editing_email [Boolean]
      #
      #   @param allow_customer_editing_name [Boolean]
      #
      #   @param allow_customer_editing_state [Boolean]
      #
      #   @param allow_customer_editing_street [Boolean]
      #
      #   @param allow_customer_editing_tax_id [Boolean]
      #
      #   @param allow_customer_editing_zipcode [Boolean]
      #
      #   @param allow_discount_code [Boolean] If the customer is allowed to apply discount code, set it to true.
      #
      #   @param allow_phone_number_collection [Boolean] If phone number is collected from customer, set it to rue
      #
      #   @param allow_tax_id [Boolean] If the customer is allowed to add tax id, set it to true
      #
      #   @param always_create_new_customer [Boolean] Set to true if a new customer object should be created.
      #
      #   @param redirect_immediately [Boolean] If true, redirects the customer immediately after payment completion
    end
  end
end
