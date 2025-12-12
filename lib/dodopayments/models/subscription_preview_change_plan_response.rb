# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#preview_change_plan
    class SubscriptionPreviewChangePlanResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute immediate_charge
      #
      #   @return [Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge]
      required :immediate_charge,
               -> { Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge }

      # @!attribute new_plan
      #   Response struct representing subscription details
      #
      #   @return [Dodopayments::Models::Subscription]
      required :new_plan, -> { Dodopayments::Subscription }

      # @!method initialize(immediate_charge:, new_plan:)
      #   @param immediate_charge [Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge]
      #
      #   @param new_plan [Dodopayments::Models::Subscription] Response struct representing subscription details

      # @see Dodopayments::Models::SubscriptionPreviewChangePlanResponse#immediate_charge
      class ImmediateCharge < Dodopayments::Internal::Type::BaseModel
        # @!attribute line_items
        #
        #   @return [Array<Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Subscription, Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Addon, Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Meter>]
        required :line_items,
                 -> { Dodopayments::Internal::Type::ArrayOf[union: Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem] }

        # @!attribute summary
        #
        #   @return [Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::Summary]
        required :summary,
                 -> { Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::Summary }

        # @!method initialize(line_items:, summary:)
        #   @param line_items [Array<Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Subscription, Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Addon, Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Meter>]
        #   @param summary [Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::Summary]

        module LineItem
          extend Dodopayments::Internal::Type::Union

          variant -> { Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Subscription }

          variant -> { Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Addon }

          variant -> { Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Meter }

          class Subscription < Dodopayments::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute currency
            #
            #   @return [Symbol, Dodopayments::Models::Currency]
            required :currency, enum: -> { Dodopayments::Currency }

            # @!attribute product_id
            #
            #   @return [String]
            required :product_id, String

            # @!attribute proration_factor
            #
            #   @return [Float]
            required :proration_factor, Float

            # @!attribute quantity
            #
            #   @return [Integer]
            required :quantity, Integer

            # @!attribute tax_inclusive
            #
            #   @return [Boolean]
            required :tax_inclusive, Dodopayments::Internal::Type::Boolean

            # @!attribute type
            #
            #   @return [Symbol, Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Subscription::Type]
            required :type,
                     enum: -> { Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Subscription::Type }

            # @!attribute unit_price
            #
            #   @return [Integer]
            required :unit_price, Integer

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute tax
            #
            #   @return [Integer, nil]
            optional :tax, Integer, nil?: true

            # @!attribute tax_rate
            #
            #   @return [Float, nil]
            optional :tax_rate, Float, nil?: true

            # @!method initialize(id:, currency:, product_id:, proration_factor:, quantity:, tax_inclusive:, type:, unit_price:, description: nil, name: nil, tax: nil, tax_rate: nil)
            #   @param id [String]
            #   @param currency [Symbol, Dodopayments::Models::Currency]
            #   @param product_id [String]
            #   @param proration_factor [Float]
            #   @param quantity [Integer]
            #   @param tax_inclusive [Boolean]
            #   @param type [Symbol, Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Subscription::Type]
            #   @param unit_price [Integer]
            #   @param description [String, nil]
            #   @param name [String, nil]
            #   @param tax [Integer, nil]
            #   @param tax_rate [Float, nil]

            # @see Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Subscription#type
            module Type
              extend Dodopayments::Internal::Type::Enum

              SUBSCRIPTION = :subscription

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class Addon < Dodopayments::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute currency
            #
            #   @return [Symbol, Dodopayments::Models::Currency]
            required :currency, enum: -> { Dodopayments::Currency }

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute proration_factor
            #
            #   @return [Float]
            required :proration_factor, Float

            # @!attribute quantity
            #
            #   @return [Integer]
            required :quantity, Integer

            # @!attribute tax_category
            #   Represents the different categories of taxation applicable to various products
            #   and services.
            #
            #   @return [Symbol, Dodopayments::Models::TaxCategory]
            required :tax_category, enum: -> { Dodopayments::TaxCategory }

            # @!attribute tax_inclusive
            #
            #   @return [Boolean]
            required :tax_inclusive, Dodopayments::Internal::Type::Boolean

            # @!attribute tax_rate
            #
            #   @return [Float]
            required :tax_rate, Float

            # @!attribute type
            #
            #   @return [Symbol, Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Addon::Type]
            required :type,
                     enum: -> { Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Addon::Type }

            # @!attribute unit_price
            #
            #   @return [Integer]
            required :unit_price, Integer

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

            # @!attribute tax
            #
            #   @return [Integer, nil]
            optional :tax, Integer, nil?: true

            # @!method initialize(id:, currency:, name:, proration_factor:, quantity:, tax_category:, tax_inclusive:, tax_rate:, type:, unit_price:, description: nil, tax: nil)
            #   Some parameter documentations has been truncated, see
            #   {Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Addon}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param currency [Symbol, Dodopayments::Models::Currency]
            #
            #   @param name [String]
            #
            #   @param proration_factor [Float]
            #
            #   @param quantity [Integer]
            #
            #   @param tax_category [Symbol, Dodopayments::Models::TaxCategory] Represents the different categories of taxation applicable to various products a
            #
            #   @param tax_inclusive [Boolean]
            #
            #   @param tax_rate [Float]
            #
            #   @param type [Symbol, Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Addon::Type]
            #
            #   @param unit_price [Integer]
            #
            #   @param description [String, nil]
            #
            #   @param tax [Integer, nil]

            # @see Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Addon#type
            module Type
              extend Dodopayments::Internal::Type::Enum

              ADDON = :addon

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class Meter < Dodopayments::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute chargeable_units
            #
            #   @return [String]
            required :chargeable_units, String

            # @!attribute currency
            #
            #   @return [Symbol, Dodopayments::Models::Currency]
            required :currency, enum: -> { Dodopayments::Currency }

            # @!attribute free_threshold
            #
            #   @return [Integer]
            required :free_threshold, Integer

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute price_per_unit
            #
            #   @return [String]
            required :price_per_unit, String

            # @!attribute subtotal
            #
            #   @return [Integer]
            required :subtotal, Integer

            # @!attribute tax_inclusive
            #
            #   @return [Boolean]
            required :tax_inclusive, Dodopayments::Internal::Type::Boolean

            # @!attribute tax_rate
            #
            #   @return [Float]
            required :tax_rate, Float

            # @!attribute type
            #
            #   @return [Symbol, Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Meter::Type]
            required :type,
                     enum: -> { Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Meter::Type }

            # @!attribute units_consumed
            #
            #   @return [String]
            required :units_consumed, String

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

            # @!attribute tax
            #
            #   @return [Integer, nil]
            optional :tax, Integer, nil?: true

            # @!method initialize(id:, chargeable_units:, currency:, free_threshold:, name:, price_per_unit:, subtotal:, tax_inclusive:, tax_rate:, type:, units_consumed:, description: nil, tax: nil)
            #   @param id [String]
            #   @param chargeable_units [String]
            #   @param currency [Symbol, Dodopayments::Models::Currency]
            #   @param free_threshold [Integer]
            #   @param name [String]
            #   @param price_per_unit [String]
            #   @param subtotal [Integer]
            #   @param tax_inclusive [Boolean]
            #   @param tax_rate [Float]
            #   @param type [Symbol, Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Meter::Type]
            #   @param units_consumed [String]
            #   @param description [String, nil]
            #   @param tax [Integer, nil]

            # @see Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Meter#type
            module Type
              extend Dodopayments::Internal::Type::Enum

              METER = :meter

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Subscription, Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Addon, Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Meter)]
        end

        # @see Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge#summary
        class Summary < Dodopayments::Internal::Type::BaseModel
          # @!attribute currency
          #
          #   @return [Symbol, Dodopayments::Models::Currency]
          required :currency, enum: -> { Dodopayments::Currency }

          # @!attribute customer_credits
          #
          #   @return [Integer]
          required :customer_credits, Integer

          # @!attribute settlement_amount
          #
          #   @return [Integer]
          required :settlement_amount, Integer

          # @!attribute settlement_currency
          #
          #   @return [Symbol, Dodopayments::Models::Currency]
          required :settlement_currency, enum: -> { Dodopayments::Currency }

          # @!attribute total_amount
          #
          #   @return [Integer]
          required :total_amount, Integer

          # @!attribute settlement_tax
          #
          #   @return [Integer, nil]
          optional :settlement_tax, Integer, nil?: true

          # @!attribute tax
          #
          #   @return [Integer, nil]
          optional :tax, Integer, nil?: true

          # @!method initialize(currency:, customer_credits:, settlement_amount:, settlement_currency:, total_amount:, settlement_tax: nil, tax: nil)
          #   @param currency [Symbol, Dodopayments::Models::Currency]
          #   @param customer_credits [Integer]
          #   @param settlement_amount [Integer]
          #   @param settlement_currency [Symbol, Dodopayments::Models::Currency]
          #   @param total_amount [Integer]
          #   @param settlement_tax [Integer, nil]
          #   @param tax [Integer, nil]
        end
      end
    end
  end
end
