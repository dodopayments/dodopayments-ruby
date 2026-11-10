# typed: strong

module Dodopayments
  module Models
    class InvoiceLine < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::InvoiceLine, Dodopayments::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(Dodopayments::InvoiceLine::Kind::TaggedSymbol) }
      attr_accessor :kind

      # A usage line has a quantity of 1. Its amount is the full usage charge.
      sig { returns(Integer) }
      attr_accessor :quantity

      sig { returns(Integer) }
      attr_accessor :tax

      # `true` when `amount` includes `tax`.
      sig { returns(T::Boolean) }
      attr_accessor :tax_inclusive

      sig { returns(Integer) }
      attr_accessor :unit_amount

      sig { returns(T.nilable(String)) }
      attr_accessor :addon_id

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(T.nilable(Time)) }
      attr_accessor :period_end

      sig { returns(T.nilable(Time)) }
      attr_accessor :period_start

      sig { returns(T.nilable(String)) }
      attr_accessor :product_id

      sig { returns(T.nilable(String)) }
      attr_accessor :subscription_id

      # Tax percent times 100. For example, 1800 is 18%.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :tax_rate

      # One frozen line. Amounts are in the smallest currency unit.
      sig do
        params(
          amount: Integer,
          kind: Dodopayments::InvoiceLine::Kind::OrSymbol,
          quantity: Integer,
          tax: Integer,
          tax_inclusive: T::Boolean,
          unit_amount: Integer,
          addon_id: T.nilable(String),
          description: T.nilable(String),
          name: T.nilable(String),
          period_end: T.nilable(Time),
          period_start: T.nilable(Time),
          product_id: T.nilable(String),
          subscription_id: T.nilable(String),
          tax_rate: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        amount:,
        kind:,
        # A usage line has a quantity of 1. Its amount is the full usage charge.
        quantity:,
        tax:,
        # `true` when `amount` includes `tax`.
        tax_inclusive:,
        unit_amount:,
        addon_id: nil,
        description: nil,
        name: nil,
        period_end: nil,
        period_start: nil,
        product_id: nil,
        subscription_id: nil,
        # Tax percent times 100. For example, 1800 is 18%.
        tax_rate: nil
      )
      end

      sig do
        override.returns(
          {
            amount: Integer,
            kind: Dodopayments::InvoiceLine::Kind::TaggedSymbol,
            quantity: Integer,
            tax: Integer,
            tax_inclusive: T::Boolean,
            unit_amount: Integer,
            addon_id: T.nilable(String),
            description: T.nilable(String),
            name: T.nilable(String),
            period_end: T.nilable(Time),
            period_start: T.nilable(Time),
            product_id: T.nilable(String),
            subscription_id: T.nilable(String),
            tax_rate: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end

      module Kind
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dodopayments::InvoiceLine::Kind) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBSCRIPTION =
          T.let(:subscription, Dodopayments::InvoiceLine::Kind::TaggedSymbol)
        ADDON = T.let(:addon, Dodopayments::InvoiceLine::Kind::TaggedSymbol)
        METER = T.let(:meter, Dodopayments::InvoiceLine::Kind::TaggedSymbol)
        CREDIT_OVERAGE =
          T.let(:credit_overage, Dodopayments::InvoiceLine::Kind::TaggedSymbol)
        ONE_TIME =
          T.let(:one_time, Dodopayments::InvoiceLine::Kind::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Dodopayments::InvoiceLine::Kind::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
