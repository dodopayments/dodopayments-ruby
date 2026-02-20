# typed: strong

module Dodopayments
  module Models
    class CheckoutSessionFlags < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CheckoutSessionFlags,
            Dodopayments::Internal::AnyHash
          )
        end

      # if customer is allowed to change currency, set it to true
      #
      # Default is true
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :allow_currency_selection

      sig { params(allow_currency_selection: T::Boolean).void }
      attr_writer :allow_currency_selection

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :allow_customer_editing_city

      sig { params(allow_customer_editing_city: T::Boolean).void }
      attr_writer :allow_customer_editing_city

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :allow_customer_editing_country

      sig { params(allow_customer_editing_country: T::Boolean).void }
      attr_writer :allow_customer_editing_country

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :allow_customer_editing_email

      sig { params(allow_customer_editing_email: T::Boolean).void }
      attr_writer :allow_customer_editing_email

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :allow_customer_editing_name

      sig { params(allow_customer_editing_name: T::Boolean).void }
      attr_writer :allow_customer_editing_name

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :allow_customer_editing_state

      sig { params(allow_customer_editing_state: T::Boolean).void }
      attr_writer :allow_customer_editing_state

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :allow_customer_editing_street

      sig { params(allow_customer_editing_street: T::Boolean).void }
      attr_writer :allow_customer_editing_street

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :allow_customer_editing_tax_id

      sig { params(allow_customer_editing_tax_id: T::Boolean).void }
      attr_writer :allow_customer_editing_tax_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :allow_customer_editing_zipcode

      sig { params(allow_customer_editing_zipcode: T::Boolean).void }
      attr_writer :allow_customer_editing_zipcode

      # If the customer is allowed to apply discount code, set it to true.
      #
      # Default is true
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :allow_discount_code

      sig { params(allow_discount_code: T::Boolean).void }
      attr_writer :allow_discount_code

      # If phone number is collected from customer, set it to rue
      #
      # Default is true
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :allow_phone_number_collection

      sig { params(allow_phone_number_collection: T::Boolean).void }
      attr_writer :allow_phone_number_collection

      # If the customer is allowed to add tax id, set it to true
      #
      # Default is true
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :allow_tax_id

      sig { params(allow_tax_id: T::Boolean).void }
      attr_writer :allow_tax_id

      # Set to true if a new customer object should be created. By default email is used
      # to find an existing customer to attach the session to
      #
      # Default is false
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :always_create_new_customer

      sig { params(always_create_new_customer: T::Boolean).void }
      attr_writer :always_create_new_customer

      # If true, redirects the customer immediately after payment completion
      #
      # Default is false
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :redirect_immediately

      sig { params(redirect_immediately: T::Boolean).void }
      attr_writer :redirect_immediately

      sig do
        params(
          allow_currency_selection: T::Boolean,
          allow_customer_editing_city: T::Boolean,
          allow_customer_editing_country: T::Boolean,
          allow_customer_editing_email: T::Boolean,
          allow_customer_editing_name: T::Boolean,
          allow_customer_editing_state: T::Boolean,
          allow_customer_editing_street: T::Boolean,
          allow_customer_editing_tax_id: T::Boolean,
          allow_customer_editing_zipcode: T::Boolean,
          allow_discount_code: T::Boolean,
          allow_phone_number_collection: T::Boolean,
          allow_tax_id: T::Boolean,
          always_create_new_customer: T::Boolean,
          redirect_immediately: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # if customer is allowed to change currency, set it to true
        #
        # Default is true
        allow_currency_selection: nil,
        allow_customer_editing_city: nil,
        allow_customer_editing_country: nil,
        allow_customer_editing_email: nil,
        allow_customer_editing_name: nil,
        allow_customer_editing_state: nil,
        allow_customer_editing_street: nil,
        allow_customer_editing_tax_id: nil,
        allow_customer_editing_zipcode: nil,
        # If the customer is allowed to apply discount code, set it to true.
        #
        # Default is true
        allow_discount_code: nil,
        # If phone number is collected from customer, set it to rue
        #
        # Default is true
        allow_phone_number_collection: nil,
        # If the customer is allowed to add tax id, set it to true
        #
        # Default is true
        allow_tax_id: nil,
        # Set to true if a new customer object should be created. By default email is used
        # to find an existing customer to attach the session to
        #
        # Default is false
        always_create_new_customer: nil,
        # If true, redirects the customer immediately after payment completion
        #
        # Default is false
        redirect_immediately: nil
      )
      end

      sig do
        override.returns(
          {
            allow_currency_selection: T::Boolean,
            allow_customer_editing_city: T::Boolean,
            allow_customer_editing_country: T::Boolean,
            allow_customer_editing_email: T::Boolean,
            allow_customer_editing_name: T::Boolean,
            allow_customer_editing_state: T::Boolean,
            allow_customer_editing_street: T::Boolean,
            allow_customer_editing_tax_id: T::Boolean,
            allow_customer_editing_zipcode: T::Boolean,
            allow_discount_code: T::Boolean,
            allow_phone_number_collection: T::Boolean,
            allow_tax_id: T::Boolean,
            always_create_new_customer: T::Boolean,
            redirect_immediately: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
