# typed: strong

module Dodopayments
  module Models
    module SubscriptionStatus
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::SubscriptionStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String, Dodopayments::Models::SubscriptionStatus::TaggedSymbol) }

      PENDING = T.let(:pending, Dodopayments::Models::SubscriptionStatus::TaggedSymbol)
      ACTIVE = T.let(:active, Dodopayments::Models::SubscriptionStatus::TaggedSymbol)
      ON_HOLD = T.let(:on_hold, Dodopayments::Models::SubscriptionStatus::TaggedSymbol)
      PAUSED = T.let(:paused, Dodopayments::Models::SubscriptionStatus::TaggedSymbol)
      CANCELLED = T.let(:cancelled, Dodopayments::Models::SubscriptionStatus::TaggedSymbol)
      FAILED = T.let(:failed, Dodopayments::Models::SubscriptionStatus::TaggedSymbol)
      EXPIRED = T.let(:expired, Dodopayments::Models::SubscriptionStatus::TaggedSymbol)

      sig { override.returns(T::Array[Dodopayments::Models::SubscriptionStatus::TaggedSymbol]) }
      def self.values; end
    end
  end
end
