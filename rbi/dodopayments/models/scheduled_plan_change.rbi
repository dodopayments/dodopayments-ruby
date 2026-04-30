# typed: strong

module Dodopayments
  module Models
    class ScheduledPlanChange < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::ScheduledPlanChange,
            Dodopayments::Internal::AnyHash
          )
        end

      # The scheduled plan change ID
      sig { returns(String) }
      attr_accessor :id

      # Addons included in the scheduled change
      sig { returns(T::Array[Dodopayments::ScheduledPlanChange::Addon]) }
      attr_accessor :addons

      # When this scheduled change was created
      sig { returns(Time) }
      attr_accessor :created_at

      # When the change will be applied
      sig { returns(Time) }
      attr_accessor :effective_at

      # The product ID the subscription will change to
      sig { returns(String) }
      attr_accessor :product_id

      # Quantity for the new plan
      sig { returns(Integer) }
      attr_accessor :quantity

      # Description of the product being changed to
      sig { returns(T.nilable(String)) }
      attr_accessor :product_description

      # Name of the product being changed to
      sig { returns(T.nilable(String)) }
      attr_accessor :product_name

      sig do
        params(
          id: String,
          addons: T::Array[Dodopayments::ScheduledPlanChange::Addon::OrHash],
          created_at: Time,
          effective_at: Time,
          product_id: String,
          quantity: Integer,
          product_description: T.nilable(String),
          product_name: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The scheduled plan change ID
        id:,
        # Addons included in the scheduled change
        addons:,
        # When this scheduled change was created
        created_at:,
        # When the change will be applied
        effective_at:,
        # The product ID the subscription will change to
        product_id:,
        # Quantity for the new plan
        quantity:,
        # Description of the product being changed to
        product_description: nil,
        # Name of the product being changed to
        product_name: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            addons: T::Array[Dodopayments::ScheduledPlanChange::Addon],
            created_at: Time,
            effective_at: Time,
            product_id: String,
            quantity: Integer,
            product_description: T.nilable(String),
            product_name: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Addon < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::ScheduledPlanChange::Addon,
              Dodopayments::Internal::AnyHash
            )
          end

        # The addon ID
        sig { returns(String) }
        attr_accessor :addon_id

        # Name of the addon
        sig { returns(String) }
        attr_accessor :name

        # Quantity of the addon
        sig { returns(Integer) }
        attr_accessor :quantity

        sig do
          params(addon_id: String, name: String, quantity: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # The addon ID
          addon_id:,
          # Name of the addon
          name:,
          # Quantity of the addon
          quantity:
        )
        end

        sig do
          override.returns(
            { addon_id: String, name: String, quantity: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
