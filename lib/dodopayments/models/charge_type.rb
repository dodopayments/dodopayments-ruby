# frozen_string_literal: true

module Dodopayments
  module Models
    # The type of subscription charge that a payment is for.
    #
    # A payment has one invoice, and the invoice has one type. Thus each payment has
    # one charge type. A payment that charges no subscription has no charge type.
    #
    # - `new`: the first payment of one or more subscriptions. A retry of that payment
    #   is also `new`. A cart with new subscriptions and one-time products is `new`.
    #   Read the one-time products from `product_cart`.
    # - `renewal`: a charge at the billing date. A dunning retry and a manual retry of
    #   that charge are also `renewal`. A `renewal` does not always extend the service
    #   period. For example, the usage settlement of a paused subscription is a
    #   `renewal` with `includes_usage` true and no entry in `service_periods`.
    #   Examine `service_periods` before you extend access.
    # - `plan_change`: a charge for a plan change. The change applies now or at the
    #   next billing date.
    # - `on_demand`: an on-demand charge of an on-demand subscription.
    module ChargeType
      extend Dodopayments::Internal::Type::Enum

      NEW = :new
      RENEWAL = :renewal
      PLAN_CHANGE = :plan_change
      ON_DEMAND = :on_demand

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
