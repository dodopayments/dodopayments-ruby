# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::ProductCollections#update
    class ProductCollectionUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute brand_id
      #   Optional brand_id update
      #
      #   @return [String, nil]
      optional :brand_id, String, nil?: true

      # @!attribute description
      #   Optional description update - pass null to remove, omit to keep unchanged
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute effective_at_on_downgrade
      #   Effective_at setting for downgrades: Some(Some(val)) = set, Some(None) = clear
      #   (inherit), None = no change
      #
      #   @return [Symbol, Dodopayments::Models::ProductCollectionUpdateParams::EffectiveAtOnDowngrade, nil]
      optional :effective_at_on_downgrade,
               enum: -> { Dodopayments::ProductCollectionUpdateParams::EffectiveAtOnDowngrade },
               nil?: true

      # @!attribute effective_at_on_upgrade
      #   Effective_at setting for upgrades: Some(Some(val)) = set, Some(None) = clear
      #   (inherit), None = no change
      #
      #   @return [Symbol, Dodopayments::Models::ProductCollectionUpdateParams::EffectiveAtOnUpgrade, nil]
      optional :effective_at_on_upgrade,
               enum: -> { Dodopayments::ProductCollectionUpdateParams::EffectiveAtOnUpgrade },
               nil?: true

      # @!attribute group_order
      #   Optional new order for groups (array of group UUIDs in desired order)
      #
      #   @return [Array<String>, nil]
      optional :group_order, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute image_id
      #   Optional image update - pass null to remove, omit to keep unchanged
      #
      #   @return [String, nil]
      optional :image_id, String, nil?: true

      # @!attribute name
      #   Optional new name for the collection
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute on_payment_failure
      #   On payment failure behavior: Some(Some(val)) = set, Some(None) = clear
      #   (inherit), None = no change
      #
      #   @return [Symbol, Dodopayments::Models::ProductCollectionUpdateParams::OnPaymentFailure, nil]
      optional :on_payment_failure,
               enum: -> { Dodopayments::ProductCollectionUpdateParams::OnPaymentFailure },
               nil?: true

      # @!attribute proration_billing_mode_on_downgrade
      #   Proration billing mode for downgrades: Some(Some(val)) = set, Some(None) = clear
      #   (inherit), None = no change
      #
      #   @return [Symbol, Dodopayments::Models::ProductCollectionUpdateParams::ProrationBillingModeOnDowngrade, nil]
      optional :proration_billing_mode_on_downgrade,
               enum: -> { Dodopayments::ProductCollectionUpdateParams::ProrationBillingModeOnDowngrade },
               nil?: true

      # @!attribute proration_billing_mode_on_upgrade
      #   Proration billing mode for upgrades: Some(Some(val)) = set, Some(None) = clear
      #   (inherit), None = no change
      #
      #   @return [Symbol, Dodopayments::Models::ProductCollectionUpdateParams::ProrationBillingModeOnUpgrade, nil]
      optional :proration_billing_mode_on_upgrade,
               enum: -> { Dodopayments::ProductCollectionUpdateParams::ProrationBillingModeOnUpgrade },
               nil?: true

      # @!method initialize(id:, brand_id: nil, description: nil, effective_at_on_downgrade: nil, effective_at_on_upgrade: nil, group_order: nil, image_id: nil, name: nil, on_payment_failure: nil, proration_billing_mode_on_downgrade: nil, proration_billing_mode_on_upgrade: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ProductCollectionUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param brand_id [String, nil] Optional brand_id update
      #
      #   @param description [String, nil] Optional description update - pass null to remove, omit to keep unchanged
      #
      #   @param effective_at_on_downgrade [Symbol, Dodopayments::Models::ProductCollectionUpdateParams::EffectiveAtOnDowngrade, nil] Effective_at setting for downgrades: Some(Some(val)) = set, Some(None) = clear (
      #
      #   @param effective_at_on_upgrade [Symbol, Dodopayments::Models::ProductCollectionUpdateParams::EffectiveAtOnUpgrade, nil] Effective_at setting for upgrades: Some(Some(val)) = set, Some(None) = clear (in
      #
      #   @param group_order [Array<String>, nil] Optional new order for groups (array of group UUIDs in desired order)
      #
      #   @param image_id [String, nil] Optional image update - pass null to remove, omit to keep unchanged
      #
      #   @param name [String, nil] Optional new name for the collection
      #
      #   @param on_payment_failure [Symbol, Dodopayments::Models::ProductCollectionUpdateParams::OnPaymentFailure, nil] On payment failure behavior: Some(Some(val)) = set, Some(None) = clear (inherit)
      #
      #   @param proration_billing_mode_on_downgrade [Symbol, Dodopayments::Models::ProductCollectionUpdateParams::ProrationBillingModeOnDowngrade, nil] Proration billing mode for downgrades: Some(Some(val)) = set, Some(None) = clear
      #
      #   @param proration_billing_mode_on_upgrade [Symbol, Dodopayments::Models::ProductCollectionUpdateParams::ProrationBillingModeOnUpgrade, nil] Proration billing mode for upgrades: Some(Some(val)) = set, Some(None) = clear (
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      # Effective_at setting for downgrades: Some(Some(val)) = set, Some(None) = clear
      # (inherit), None = no change
      module EffectiveAtOnDowngrade
        extend Dodopayments::Internal::Type::Enum

        IMMEDIATELY = :immediately
        NEXT_BILLING_DATE = :next_billing_date

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Effective_at setting for upgrades: Some(Some(val)) = set, Some(None) = clear
      # (inherit), None = no change
      module EffectiveAtOnUpgrade
        extend Dodopayments::Internal::Type::Enum

        IMMEDIATELY = :immediately
        NEXT_BILLING_DATE = :next_billing_date

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # On payment failure behavior: Some(Some(val)) = set, Some(None) = clear
      # (inherit), None = no change
      module OnPaymentFailure
        extend Dodopayments::Internal::Type::Enum

        PREVENT_CHANGE = :prevent_change
        APPLY_CHANGE = :apply_change

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Proration billing mode for downgrades: Some(Some(val)) = set, Some(None) = clear
      # (inherit), None = no change
      module ProrationBillingModeOnDowngrade
        extend Dodopayments::Internal::Type::Enum

        PRORATED_IMMEDIATELY = :prorated_immediately
        FULL_IMMEDIATELY = :full_immediately
        DIFFERENCE_IMMEDIATELY = :difference_immediately
        DO_NOT_BILL = :do_not_bill

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Proration billing mode for upgrades: Some(Some(val)) = set, Some(None) = clear
      # (inherit), None = no change
      module ProrationBillingModeOnUpgrade
        extend Dodopayments::Internal::Type::Enum

        PRORATED_IMMEDIATELY = :prorated_immediately
        FULL_IMMEDIATELY = :full_immediately
        DIFFERENCE_IMMEDIATELY = :difference_immediately
        DO_NOT_BILL = :do_not_bill

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
