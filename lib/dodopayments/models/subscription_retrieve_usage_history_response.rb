# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#retrieve_usage_history
    class SubscriptionRetrieveUsageHistoryResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute end_date
      #   End date of the billing period
      #
      #   @return [Time]
      required :end_date, Time

      # @!attribute meters
      #   List of meters and their usage for this billing period
      #
      #   @return [Array<Dodopayments::Models::SubscriptionRetrieveUsageHistoryResponse::Meter>]
      required :meters,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::SubscriptionRetrieveUsageHistoryResponse::Meter] }

      # @!attribute start_date
      #   Start date of the billing period
      #
      #   @return [Time]
      required :start_date, Time

      # @!method initialize(end_date:, meters:, start_date:)
      #   @param end_date [Time] End date of the billing period
      #
      #   @param meters [Array<Dodopayments::Models::SubscriptionRetrieveUsageHistoryResponse::Meter>] List of meters and their usage for this billing period
      #
      #   @param start_date [Time] Start date of the billing period

      class Meter < Dodopayments::Internal::Type::BaseModel
        # @!attribute id
        #   Meter identifier
        #
        #   @return [String]
        required :id, String

        # @!attribute chargeable_units
        #   Chargeable units (after free threshold) as string for precision
        #
        #   @return [String]
        required :chargeable_units, String

        # @!attribute consumed_units
        #   Total units consumed as string for precision
        #
        #   @return [String]
        required :consumed_units, String

        # @!attribute currency
        #   Currency for the price per unit
        #
        #   @return [Symbol, Dodopayments::Models::Currency]
        required :currency, enum: -> { Dodopayments::Currency }

        # @!attribute free_threshold
        #   Free threshold units for this meter
        #
        #   @return [Integer]
        required :free_threshold, Integer

        # @!attribute name
        #   Meter name
        #
        #   @return [String]
        required :name, String

        # @!attribute price_per_unit
        #   Price per unit in string format for precision
        #
        #   @return [String]
        required :price_per_unit, String

        # @!attribute total_price
        #   Total price charged for this meter in smallest currency unit (cents)
        #
        #   @return [Integer]
        required :total_price, Integer

        # @!method initialize(id:, chargeable_units:, consumed_units:, currency:, free_threshold:, name:, price_per_unit:, total_price:)
        #   @param id [String] Meter identifier
        #
        #   @param chargeable_units [String] Chargeable units (after free threshold) as string for precision
        #
        #   @param consumed_units [String] Total units consumed as string for precision
        #
        #   @param currency [Symbol, Dodopayments::Models::Currency] Currency for the price per unit
        #
        #   @param free_threshold [Integer] Free threshold units for this meter
        #
        #   @param name [String] Meter name
        #
        #   @param price_per_unit [String] Price per unit in string format for precision
        #
        #   @param total_price [Integer] Total price charged for this meter in smallest currency unit (cents)
      end
    end
  end
end
