# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Customers#retrieve_payment_methods
    class CustomerRetrievePaymentMethodsResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute items
      #
      #   @return [Array<Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item>]
      required :items,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item] }

      # @!method initialize(items:)
      #   @param items [Array<Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item>]

      class Item < Dodopayments::Internal::Type::BaseModel
        # @!attribute connector_payment_methods
        #
        #   @return [Hash{Symbol=>Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::ConnectorPaymentMethod}]
        required :connector_payment_methods,
                 -> { Dodopayments::Internal::Type::HashOf[Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::ConnectorPaymentMethod] }

        # @!attribute payment_method
        #   PaymentMethod enum from hyperswitch
        #
        #   https://github.com/juspay/hyperswitch/blob/ecd05d53c99ae701ac94893ec632a3988afe3238/crates/common_enums/src/enums.rs#L2097
        #
        #   @return [Symbol, Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod]
        required :payment_method,
                 enum: -> { Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod }

        # @!attribute payment_method_id
        #
        #   @return [String]
        required :payment_method_id, String

        # @!attribute profile_map
        #
        #   @return [Hash{Symbol=>String}]
        required :profile_map, Dodopayments::Internal::Type::HashOf[String]

        # @!attribute card
        #
        #   @return [Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::Card, nil]
        optional :card,
                 -> { Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::Card },
                 nil?: true

        # @!attribute last_used_at
        #
        #   @return [Time, nil]
        optional :last_used_at, Time, nil?: true

        # @!attribute recurring_enabled
        #
        #   @return [Boolean, nil]
        optional :recurring_enabled, Dodopayments::Internal::Type::Boolean, nil?: true

        # @!method initialize(connector_payment_methods:, payment_method:, payment_method_id:, profile_map:, card: nil, last_used_at: nil, recurring_enabled: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item} for more
        #   details.
        #
        #   @param connector_payment_methods [Hash{Symbol=>Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::ConnectorPaymentMethod}]
        #
        #   @param payment_method [Symbol, Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod] PaymentMethod enum from hyperswitch
        #
        #   @param payment_method_id [String]
        #
        #   @param profile_map [Hash{Symbol=>String}]
        #
        #   @param card [Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::Card, nil]
        #
        #   @param last_used_at [Time, nil]
        #
        #   @param recurring_enabled [Boolean, nil]

        class ConnectorPaymentMethod < Dodopayments::Internal::Type::BaseModel
          # @!attribute connector_mandate_id
          #
          #   @return [String]
          required :connector_mandate_id, String

          # @!attribute original_payment_authorized_amount
          #
          #   @return [Integer]
          required :original_payment_authorized_amount, Integer

          # @!attribute original_payment_authorized_currency
          #
          #   @return [Symbol, Dodopayments::Models::Currency]
          required :original_payment_authorized_currency, enum: -> { Dodopayments::Currency }

          # @!attribute payment_method_type
          #
          #   @return [Symbol, Dodopayments::Models::PaymentMethodTypes, nil]
          optional :payment_method_type, enum: -> { Dodopayments::PaymentMethodTypes }, nil?: true

          # @!method initialize(connector_mandate_id:, original_payment_authorized_amount:, original_payment_authorized_currency:, payment_method_type: nil)
          #   @param connector_mandate_id [String]
          #   @param original_payment_authorized_amount [Integer]
          #   @param original_payment_authorized_currency [Symbol, Dodopayments::Models::Currency]
          #   @param payment_method_type [Symbol, Dodopayments::Models::PaymentMethodTypes, nil]
        end

        # PaymentMethod enum from hyperswitch
        #
        # https://github.com/juspay/hyperswitch/blob/ecd05d53c99ae701ac94893ec632a3988afe3238/crates/common_enums/src/enums.rs#L2097
        #
        # @see Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item#payment_method
        module PaymentMethod
          extend Dodopayments::Internal::Type::Enum

          CARD = :card
          CARD_REDIRECT = :card_redirect
          PAY_LATER = :pay_later
          WALLET = :wallet
          BANK_REDIRECT = :bank_redirect
          BANK_TRANSFER = :bank_transfer
          CRYPTO = :crypto
          BANK_DEBIT = :bank_debit
          REWARD = :reward
          REAL_TIME_PAYMENT = :real_time_payment
          UPI = :upi
          VOUCHER = :voucher
          GIFT_CARD = :gift_card
          OPEN_BANKING = :open_banking
          MOBILE_PAYMENT = :mobile_payment

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item#card
        class Card < Dodopayments::Internal::Type::BaseModel
          # @!attribute card_issuing_country
          #   ISO country code alpha2 variant
          #
          #   @return [Symbol, Dodopayments::Models::CountryCode, nil]
          optional :card_issuing_country, enum: -> { Dodopayments::CountryCode }, nil?: true

          # @!attribute card_network
          #
          #   @return [String, nil]
          optional :card_network, String, nil?: true

          # @!attribute card_type
          #
          #   @return [String, nil]
          optional :card_type, String, nil?: true

          # @!attribute expiry_month
          #
          #   @return [String, nil]
          optional :expiry_month, String, nil?: true

          # @!attribute expiry_year
          #
          #   @return [String, nil]
          optional :expiry_year, String, nil?: true

          # @!attribute last4_digits
          #
          #   @return [String, nil]
          optional :last4_digits, String, nil?: true

          # @!method initialize(card_issuing_country: nil, card_network: nil, card_type: nil, expiry_month: nil, expiry_year: nil, last4_digits: nil)
          #   @param card_issuing_country [Symbol, Dodopayments::Models::CountryCode, nil] ISO country code alpha2 variant
          #
          #   @param card_network [String, nil]
          #
          #   @param card_type [String, nil]
          #
          #   @param expiry_month [String, nil]
          #
          #   @param expiry_year [String, nil]
          #
          #   @param last4_digits [String, nil]
        end
      end
    end
  end
end
