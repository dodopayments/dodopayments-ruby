# typed: strong

module Dodopayments
  module Models
    module SubscriptionStatus
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Dodopayments::SubscriptionStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PENDING = T.let(:pending, Dodopayments::SubscriptionStatus::TaggedSymbol)
      ACTIVE = T.let(:active, Dodopayments::SubscriptionStatus::TaggedSymbol)
      ON_HOLD = T.let(:on_hold, Dodopayments::SubscriptionStatus::TaggedSymbol)
      CANCELLED =
        T.let(:cancelled, Dodopayments::SubscriptionStatus::TaggedSymbol)
      FAILED = T.let(:failed, Dodopayments::SubscriptionStatus::TaggedSymbol)
      EXPIRED = T.let(:expired, Dodopayments::SubscriptionStatus::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Dodopayments::SubscriptionStatus::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
