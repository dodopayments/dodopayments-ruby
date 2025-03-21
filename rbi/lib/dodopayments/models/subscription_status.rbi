# typed: strong

module Dodopayments
  module Models
    module SubscriptionStatus
      extend Dodopayments::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::SubscriptionStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, Dodopayments::Models::SubscriptionStatus::TaggedSymbol) }

      PENDING = T.let(:pending, Dodopayments::Models::SubscriptionStatus::OrSymbol)
      ACTIVE = T.let(:active, Dodopayments::Models::SubscriptionStatus::OrSymbol)
      ON_HOLD = T.let(:on_hold, Dodopayments::Models::SubscriptionStatus::OrSymbol)
      PAUSED = T.let(:paused, Dodopayments::Models::SubscriptionStatus::OrSymbol)
      CANCELLED = T.let(:cancelled, Dodopayments::Models::SubscriptionStatus::OrSymbol)
      FAILED = T.let(:failed, Dodopayments::Models::SubscriptionStatus::OrSymbol)
      EXPIRED = T.let(:expired, Dodopayments::Models::SubscriptionStatus::OrSymbol)
    end
  end
end
