# frozen_string_literal: true

module Dodopayments
  module Models
    class UpdateSubscriptionPlanReq < Dodopayments::Internal::Type::BaseModel
      # @!attribute product_id
      #   Unique identifier of the product to subscribe to
      #
      #   @return [String]
      required :product_id, String

      # @!attribute proration_billing_mode
      #   Proration Billing Mode
      #
      #   @return [Symbol, Dodopayments::Models::UpdateSubscriptionPlanReq::ProrationBillingMode]
      required :proration_billing_mode,
               enum: -> { Dodopayments::UpdateSubscriptionPlanReq::ProrationBillingMode }

      # @!attribute quantity
      #   Number of units to subscribe for. Must be at least 1.
      #
      #   @return [Integer]
      required :quantity, Integer

      # @!attribute adaptive_currency_fees_inclusive
      #   Whether adaptive currency fees should be included in the price (true) or added
      #   on top (false). If not specified, uses the subscription's stored setting.
      #
      #   @return [Boolean, nil]
      optional :adaptive_currency_fees_inclusive, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute addons
      #   Addons for the new plan. Note : Leaving this empty would remove any existing
      #   addons
      #
      #   @return [Array<Dodopayments::Models::AttachAddon>, nil]
      optional :addons, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::AttachAddon] }, nil?: true

      # @!attribute cancel_older_payment_link
      #   Cancel the payment link of a pending plan change, so that this change can
      #   replace it.
      #
      #   The link is cancelled only if the customer has not started to pay. A paid or
      #   in-progress payment gives a `409`. A failed cancel gives a `503`, and a retry is
      #   safe.
      #
      #   The request is validated before the cancel. A later failure, for example an
      #   amount below the minimum, leaves the subscription on its current plan with no
      #   open link. A retry is safe.
      #
      #   The preview route shares this request body and ignores this field.
      #
      #   @return [Boolean, nil]
      optional :cancel_older_payment_link, Dodopayments::Internal::Type::Boolean

      # @!attribute cancel_scheduled_change_plan
      #   Replace a scheduled plan change with this one.
      #
      #   The scheduled change is cancelled by the transaction that applies this change. A
      #   change that never applies leaves the schedule in place.
      #
      #   `effective_at: next_billing_date` is allowed. The new schedule then replaces the
      #   old one in the request transaction.
      #
      #   A pending plan change still gets a `409`. This field does not affect it.
      #
      #   The preview route shares this request body, so a preview that sets this field
      #   also passes the scheduled-change `409`.
      #
      #   @return [Boolean, nil]
      optional :cancel_scheduled_change_plan, Dodopayments::Internal::Type::Boolean

      # @!attribute collect_via_payment_link
      #   Collect the plan-change amount with a payment link. The customer then pays on a
      #   checkout page.
      #
      #   The business needs the `allow_plan_change_via_payment_link` capability. The
      #   request needs `effective_at: immediately`. The request also needs
      #   `on_payment_failure: prevent_change`.
      #
      #   The preview route shares this request body and ignores this field.
      #
      #   @return [Boolean, nil]
      optional :collect_via_payment_link, Dodopayments::Internal::Type::Boolean

      # @!attribute credit
      #   Where a downgrade credit goes. Only invoice-led subscriptions read it. The
      #   default is `customer_balance`.
      #
      #   @return [Symbol, Dodopayments::Models::UpdateSubscriptionPlanReq::Credit, nil]
      optional :credit, enum: -> { Dodopayments::UpdateSubscriptionPlanReq::Credit }, nil?: true

      # @!attribute discount_code
      #   @deprecated Use `discount_id` instead.
      #
      #   DEPRECATED: Use discount_codes instead. Cannot be used together with
      #   discount_codes.
      #
      #   @return [String, nil]
      optional :discount_code, String, nil?: true

      # @!attribute discount_codes
      #   Stacked discount codes to apply to the new plan. Max 20. Cannot be used together
      #   with discount_code. If provided, replaces any existing discount codes. Empty
      #   array removes all discounts. If not provided (None), existing discounts with
      #   preserve_on_plan_change=true are preserved.
      #
      #   @return [Array<String>, nil]
      optional :discount_codes, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute effective_at
      #   When to apply the plan change.
      #
      #   - `immediately` (default): Apply the plan change right away
      #   - `next_billing_date`: Schedule the change for the next billing date
      #
      #   @return [Symbol, Dodopayments::Models::UpdateSubscriptionPlanReq::EffectiveAt, nil]
      optional :effective_at, enum: -> { Dodopayments::UpdateSubscriptionPlanReq::EffectiveAt }

      # @!attribute invoice
      #   The invoice of a plan change billed now. Only invoice-led subscriptions read it.
      #
      #   @return [Dodopayments::Models::UpdateSubscriptionPlanReq::Invoice, nil]
      optional :invoice, -> { Dodopayments::UpdateSubscriptionPlanReq::Invoice }, nil?: true

      # @!attribute metadata
      #   Metadata for the payment. If not passed, the metadata of the subscription will
      #   be taken
      #
      #   @return [Hash{Symbol=>String, Float, Boolean}, nil]
      optional :metadata,
               -> { Dodopayments::Internal::Type::HashOf[union: Dodopayments::MetadataItem] },
               nil?: true

      # @!attribute on_payment_failure
      #   Controls behavior when the plan change payment fails.
      #
      #   - `prevent_change`: Keep subscription on current plan until payment succeeds
      #   - `apply_change` (default): Apply plan change immediately regardless of payment
      #     outcome
      #
      #   With `effective_at: next_billing_date`, the plan change payment replaces the
      #   renewal payment. If that payment fails with `prevent_change`, the plan change is
      #   cancelled. The subscription then renews on the current plan, with the usual
      #   payment retries.
      #
      #   If not specified, uses the business-level default setting.
      #
      #   @return [Symbol, Dodopayments::Models::UpdateSubscriptionPlanReq::OnPaymentFailure, nil]
      optional :on_payment_failure,
               enum: -> { Dodopayments::UpdateSubscriptionPlanReq::OnPaymentFailure },
               nil?: true

      # @!attribute return_url
      #   The URL that receives the customer after they pay the payment link. Needs
      #   `collect_via_payment_link: true`. Without it, the request gets a `422`. A change
      #   that collects no money issues no link and does not use the URL. The preview
      #   route validates this field but does not use it.
      #
      #   The redirect adds `subscription_id`, `payment_id` and `status`. The `status`
      #   value is the status of the plan-change payment. It is not the status of the
      #   subscription. When that payment fails, the subscription stays active on its
      #   current plan. To try again, call this endpoint again to get a new link. The new
      #   plan can apply after the redirect, when the payment webhook arrives.
      #
      #   @return [String, nil]
      optional :return_url, String, nil?: true

      # @!method initialize(product_id:, proration_billing_mode:, quantity:, adaptive_currency_fees_inclusive: nil, addons: nil, cancel_older_payment_link: nil, cancel_scheduled_change_plan: nil, collect_via_payment_link: nil, credit: nil, discount_code: nil, discount_codes: nil, effective_at: nil, invoice: nil, metadata: nil, on_payment_failure: nil, return_url: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::UpdateSubscriptionPlanReq} for more details.
      #
      #   @param product_id [String] Unique identifier of the product to subscribe to
      #
      #   @param proration_billing_mode [Symbol, Dodopayments::Models::UpdateSubscriptionPlanReq::ProrationBillingMode] Proration Billing Mode
      #
      #   @param quantity [Integer] Number of units to subscribe for. Must be at least 1.
      #
      #   @param adaptive_currency_fees_inclusive [Boolean, nil] Whether adaptive currency fees should be included in the price (true) or added o
      #
      #   @param addons [Array<Dodopayments::Models::AttachAddon>, nil] Addons for the new plan.
      #
      #   @param cancel_older_payment_link [Boolean] Cancel the payment link of a pending plan change, so that this change
      #
      #   @param cancel_scheduled_change_plan [Boolean] Replace a scheduled plan change with this one.
      #
      #   @param collect_via_payment_link [Boolean] Collect the plan-change amount with a payment link. The customer then
      #
      #   @param credit [Symbol, Dodopayments::Models::UpdateSubscriptionPlanReq::Credit, nil] Where a downgrade credit goes. Only invoice-led subscriptions read it.
      #
      #   @param discount_code [String, nil] DEPRECATED: Use discount_codes instead. Cannot be used together with discount_co
      #
      #   @param discount_codes [Array<String>, nil] Stacked discount codes to apply to the new plan. Max 20.
      #
      #   @param effective_at [Symbol, Dodopayments::Models::UpdateSubscriptionPlanReq::EffectiveAt] When to apply the plan change.
      #
      #   @param invoice [Dodopayments::Models::UpdateSubscriptionPlanReq::Invoice, nil] The invoice of a plan change billed now. Only invoice-led subscriptions read it.
      #
      #   @param metadata [Hash{Symbol=>String, Float, Boolean}, nil] Metadata for the payment. If not passed, the metadata of the subscription will b
      #
      #   @param on_payment_failure [Symbol, Dodopayments::Models::UpdateSubscriptionPlanReq::OnPaymentFailure, nil] Controls behavior when the plan change payment fails.
      #
      #   @param return_url [String, nil] The URL that receives the customer after they pay the payment link.

      # Proration Billing Mode
      #
      # @see Dodopayments::Models::UpdateSubscriptionPlanReq#proration_billing_mode
      module ProrationBillingMode
        extend Dodopayments::Internal::Type::Enum

        PRORATED_IMMEDIATELY = :prorated_immediately
        FULL_IMMEDIATELY = :full_immediately
        DIFFERENCE_IMMEDIATELY = :difference_immediately
        DO_NOT_BILL = :do_not_bill
        PRORATED_IMMEDIATELY_KEEP_CYCLE = :prorated_immediately_keep_cycle

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Where a downgrade credit goes. Only invoice-led subscriptions read it. The
      # default is `customer_balance`.
      #
      # @see Dodopayments::Models::UpdateSubscriptionPlanReq#credit
      module Credit
        extend Dodopayments::Internal::Type::Enum

        CUSTOMER_BALANCE = :customer_balance
        REFUND = :refund

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # When to apply the plan change.
      #
      # - `immediately` (default): Apply the plan change right away
      # - `next_billing_date`: Schedule the change for the next billing date
      #
      # @see Dodopayments::Models::UpdateSubscriptionPlanReq#effective_at
      module EffectiveAt
        extend Dodopayments::Internal::Type::Enum

        IMMEDIATELY = :immediately
        NEXT_BILLING_DATE = :next_billing_date

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Dodopayments::Models::UpdateSubscriptionPlanReq#invoice
      class Invoice < Dodopayments::Internal::Type::BaseModel
        # @!attribute collection_method
        #   The collection method of the invoice. The subscription value applies when
        #   absent.
        #
        #   @return [Symbol, Dodopayments::Models::CollectionMethod, nil]
        optional :collection_method, enum: -> { Dodopayments::CollectionMethod }, nil?: true

        # @!attribute finalize
        #   `false` keeps the invoice as a draft for review. Default `true`.
        #
        #   @return [Boolean, nil]
        optional :finalize, Dodopayments::Internal::Type::Boolean

        # @!attribute payment_terms
        #   The terms of the plan-change invoice. The subscription terms apply when absent.
        #
        #   @return [Dodopayments::Models::UpdateSubscriptionPlanReq::Invoice::PaymentTerms::DueOnReceipt, Dodopayments::Models::UpdateSubscriptionPlanReq::Invoice::PaymentTerms::Net, nil]
        optional :payment_terms,
                 union: -> { Dodopayments::UpdateSubscriptionPlanReq::Invoice::PaymentTerms },
                 nil?: true

        # @!method initialize(collection_method: nil, finalize: nil, payment_terms: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::UpdateSubscriptionPlanReq::Invoice} for more details.
        #
        #   The invoice of a plan change billed now. Only invoice-led subscriptions read it.
        #
        #   @param collection_method [Symbol, Dodopayments::Models::CollectionMethod, nil] The collection method of the invoice. The subscription value applies when absent
        #
        #   @param finalize [Boolean] `false` keeps the invoice as a draft for review. Default `true`.
        #
        #   @param payment_terms [Dodopayments::Models::UpdateSubscriptionPlanReq::Invoice::PaymentTerms::DueOnReceipt, Dodopayments::Models::UpdateSubscriptionPlanReq::Invoice::PaymentTerms::Net, nil] The terms of the plan-change invoice. The subscription terms apply when absent.

        # The terms of the plan-change invoice. The subscription terms apply when absent.
        #
        # @see Dodopayments::Models::UpdateSubscriptionPlanReq::Invoice#payment_terms
        module PaymentTerms
          extend Dodopayments::Internal::Type::Union

          discriminator :type

          variant :due_on_receipt,
                  -> { Dodopayments::UpdateSubscriptionPlanReq::Invoice::PaymentTerms::DueOnReceipt }

          variant :net, -> { Dodopayments::UpdateSubscriptionPlanReq::Invoice::PaymentTerms::Net }

          class DueOnReceipt < Dodopayments::Internal::Type::BaseModel
            # @!attribute type
            #
            #   @return [Symbol, :due_on_receipt]
            required :type, const: :due_on_receipt

            # @!method initialize(type: :due_on_receipt)
            #   @param type [Symbol, :due_on_receipt]
          end

          class Net < Dodopayments::Internal::Type::BaseModel
            # @!attribute days
            #
            #   @return [Integer]
            required :days, Integer

            # @!attribute type
            #
            #   @return [Symbol, :net]
            required :type, const: :net

            # @!method initialize(days:, type: :net)
            #   @param days [Integer]
            #   @param type [Symbol, :net]
          end

          # @!method self.variants
          #   @return [Array(Dodopayments::Models::UpdateSubscriptionPlanReq::Invoice::PaymentTerms::DueOnReceipt, Dodopayments::Models::UpdateSubscriptionPlanReq::Invoice::PaymentTerms::Net)]
        end
      end

      # Controls behavior when the plan change payment fails.
      #
      # - `prevent_change`: Keep subscription on current plan until payment succeeds
      # - `apply_change` (default): Apply plan change immediately regardless of payment
      #   outcome
      #
      # With `effective_at: next_billing_date`, the plan change payment replaces the
      # renewal payment. If that payment fails with `prevent_change`, the plan change is
      # cancelled. The subscription then renews on the current plan, with the usual
      # payment retries.
      #
      # If not specified, uses the business-level default setting.
      #
      # @see Dodopayments::Models::UpdateSubscriptionPlanReq#on_payment_failure
      module OnPaymentFailure
        extend Dodopayments::Internal::Type::Enum

        PREVENT_CHANGE = :prevent_change
        APPLY_CHANGE = :apply_change

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
