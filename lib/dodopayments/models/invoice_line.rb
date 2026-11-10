# frozen_string_literal: true

module Dodopayments
  module Models
    class InvoiceLine < Dodopayments::Internal::Type::BaseModel
      # @!attribute amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute kind
      #
      #   @return [Symbol, Dodopayments::Models::InvoiceLine::Kind]
      required :kind, enum: -> { Dodopayments::InvoiceLine::Kind }

      # @!attribute quantity
      #   A usage line has a quantity of 1. Its amount is the full usage charge.
      #
      #   @return [Integer]
      required :quantity, Integer

      # @!attribute tax
      #
      #   @return [Integer]
      required :tax, Integer

      # @!attribute tax_inclusive
      #   `true` when `amount` includes `tax`.
      #
      #   @return [Boolean]
      required :tax_inclusive, Dodopayments::Internal::Type::Boolean

      # @!attribute unit_amount
      #
      #   @return [Integer]
      required :unit_amount, Integer

      # @!attribute addon_id
      #
      #   @return [String, nil]
      optional :addon_id, String, nil?: true

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute period_end
      #
      #   @return [Time, nil]
      optional :period_end, Time, nil?: true

      # @!attribute period_start
      #
      #   @return [Time, nil]
      optional :period_start, Time, nil?: true

      # @!attribute product_id
      #
      #   @return [String, nil]
      optional :product_id, String, nil?: true

      # @!attribute subscription_id
      #
      #   @return [String, nil]
      optional :subscription_id, String, nil?: true

      # @!attribute tax_rate
      #   Tax percent times 100. For example, 1800 is 18%.
      #
      #   @return [Integer, nil]
      optional :tax_rate, Integer, nil?: true

      # @!method initialize(amount:, kind:, quantity:, tax:, tax_inclusive:, unit_amount:, addon_id: nil, description: nil, name: nil, period_end: nil, period_start: nil, product_id: nil, subscription_id: nil, tax_rate: nil)
      #   One frozen line. Amounts are in the smallest currency unit.
      #
      #   @param amount [Integer]
      #
      #   @param kind [Symbol, Dodopayments::Models::InvoiceLine::Kind]
      #
      #   @param quantity [Integer] A usage line has a quantity of 1. Its amount is the full usage charge.
      #
      #   @param tax [Integer]
      #
      #   @param tax_inclusive [Boolean] `true` when `amount` includes `tax`.
      #
      #   @param unit_amount [Integer]
      #
      #   @param addon_id [String, nil]
      #
      #   @param description [String, nil]
      #
      #   @param name [String, nil]
      #
      #   @param period_end [Time, nil]
      #
      #   @param period_start [Time, nil]
      #
      #   @param product_id [String, nil]
      #
      #   @param subscription_id [String, nil]
      #
      #   @param tax_rate [Integer, nil] Tax percent times 100. For example, 1800 is 18%.

      # @see Dodopayments::Models::InvoiceLine#kind
      module Kind
        extend Dodopayments::Internal::Type::Enum

        SUBSCRIPTION = :subscription
        ADDON = :addon
        METER = :meter
        CREDIT_OVERAGE = :credit_overage
        ONE_TIME = :one_time

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
