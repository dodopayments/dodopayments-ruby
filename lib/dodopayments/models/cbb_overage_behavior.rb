# frozen_string_literal: true

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

      FORGIVE_AT_RESET = :forgive_at_reset
      INVOICE_AT_BILLING = :invoice_at_billing
      CARRY_DEFICIT = :carry_deficit
      CARRY_DEFICIT_AUTO_REPAY = :carry_deficit_auto_repay

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
