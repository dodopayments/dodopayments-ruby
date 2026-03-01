# typed: strong

module Dodopayments
  module Models
    # Controls how overage is handled at the end of a billing cycle.
    #
    # | Preset                     | Charge at billing | Credits reduce overage | Preserve overage at reset |
    # | -------------------------- | :---------------: | :--------------------: | :-----------------------: |
    # | `forgive_at_reset`         |        No         |           No           |            No             |
    # | `invoice_at_billing`       |        Yes        |           No           |            No             |
    # | `carry_deficit`            |        No         |           No           |            Yes            |
    # | `carry_deficit_auto_repay` |        No         |          Yes           |            Yes            |
    module CbbOverageBehavior
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Dodopayments::CbbOverageBehavior) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      FORGIVE_AT_RESET =
        T.let(:forgive_at_reset, Dodopayments::CbbOverageBehavior::TaggedSymbol)
      INVOICE_AT_BILLING =
        T.let(
          :invoice_at_billing,
          Dodopayments::CbbOverageBehavior::TaggedSymbol
        )
      CARRY_DEFICIT =
        T.let(:carry_deficit, Dodopayments::CbbOverageBehavior::TaggedSymbol)
      CARRY_DEFICIT_AUTO_REPAY =
        T.let(
          :carry_deficit_auto_repay,
          Dodopayments::CbbOverageBehavior::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[Dodopayments::CbbOverageBehavior::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
