# typed: strong

module Dodopayments
  module Models
    class SubscriptionRetrieveUsageHistoryResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::SubscriptionRetrieveUsageHistoryResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # End date of the billing period
      sig { returns(Time) }
      attr_accessor :end_date

      # List of meters and their usage for this billing period
      sig do
        returns(
          T::Array[
            Dodopayments::Models::SubscriptionRetrieveUsageHistoryResponse::Meter
          ]
        )
      end
      attr_accessor :meters

      # Start date of the billing period
      sig { returns(Time) }
      attr_accessor :start_date

      sig do
        params(
          end_date: Time,
          meters:
            T::Array[
              Dodopayments::Models::SubscriptionRetrieveUsageHistoryResponse::Meter::OrHash
            ],
          start_date: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # End date of the billing period
        end_date:,
        # List of meters and their usage for this billing period
        meters:,
        # Start date of the billing period
        start_date:
      )
      end

      sig do
        override.returns(
          {
            end_date: Time,
            meters:
              T::Array[
                Dodopayments::Models::SubscriptionRetrieveUsageHistoryResponse::Meter
              ],
            start_date: Time
          }
        )
      end
      def to_hash
      end

      class Meter < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::SubscriptionRetrieveUsageHistoryResponse::Meter,
              Dodopayments::Internal::AnyHash
            )
          end

        # Meter identifier
        sig { returns(String) }
        attr_accessor :id

        # Chargeable units (after free threshold) as string for precision
        sig { returns(String) }
        attr_accessor :chargeable_units

        # Total units consumed as string for precision
        sig { returns(String) }
        attr_accessor :consumed_units

        # Currency for the price per unit
        sig { returns(Dodopayments::Currency::TaggedSymbol) }
        attr_accessor :currency

        # Free threshold units for this meter
        sig { returns(Integer) }
        attr_accessor :free_threshold

        # Meter name
        sig { returns(String) }
        attr_accessor :name

        # Price per unit in string format for precision
        sig { returns(String) }
        attr_accessor :price_per_unit

        # Total price charged for this meter in smallest currency unit (cents)
        sig { returns(Integer) }
        attr_accessor :total_price

        sig do
          params(
            id: String,
            chargeable_units: String,
            consumed_units: String,
            currency: Dodopayments::Currency::OrSymbol,
            free_threshold: Integer,
            name: String,
            price_per_unit: String,
            total_price: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Meter identifier
          id:,
          # Chargeable units (after free threshold) as string for precision
          chargeable_units:,
          # Total units consumed as string for precision
          consumed_units:,
          # Currency for the price per unit
          currency:,
          # Free threshold units for this meter
          free_threshold:,
          # Meter name
          name:,
          # Price per unit in string format for precision
          price_per_unit:,
          # Total price charged for this meter in smallest currency unit (cents)
          total_price:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              chargeable_units: String,
              consumed_units: String,
              currency: Dodopayments::Currency::TaggedSymbol,
              free_threshold: Integer,
              name: String,
              price_per_unit: String,
              total_price: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
