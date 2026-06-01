# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::ProductCollections#create
    class ProductCollectionCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute groups
      #   Groups of products in this collection
      #
      #   @return [Array<Dodopayments::Models::ProductCollections::ProductCollectionGroupDetails>]
      required :groups,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::ProductCollections::ProductCollectionGroupDetails] }

      # @!attribute name
      #   Name of the product collection
      #
      #   @return [String]
      required :name, String

      # @!attribute brand_id
      #   Brand id for the collection, if not provided will default to primary brand
      #
      #   @return [String, nil]
      optional :brand_id, String, nil?: true

      # @!attribute description
      #   Optional description of the product collection
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute effective_at_on_downgrade
      #   Default effective_at setting for subscription plan downgrades (NULL = inherit
      #   from business)
      #
      #   @return [Symbol, Dodopayments::Models::ProductCollectionCreateParams::EffectiveAtOnDowngrade, nil]
      optional :effective_at_on_downgrade,
               enum: -> { Dodopayments::ProductCollectionCreateParams::EffectiveAtOnDowngrade },
               nil?: true

      # @!attribute effective_at_on_upgrade
      #   Default effective_at setting for subscription plan upgrades (NULL = inherit from
      #   business)
      #
      #   @return [Symbol, Dodopayments::Models::ProductCollectionCreateParams::EffectiveAtOnUpgrade, nil]
      optional :effective_at_on_upgrade,
               enum: -> { Dodopayments::ProductCollectionCreateParams::EffectiveAtOnUpgrade },
               nil?: true

      # @!attribute on_payment_failure
      #   Default behavior for subscription plan changes on payment failure (NULL =
      #   inherit from business)
      #
      #   @return [Symbol, Dodopayments::Models::ProductCollectionCreateParams::OnPaymentFailure, nil]
      optional :on_payment_failure,
               enum: -> { Dodopayments::ProductCollectionCreateParams::OnPaymentFailure },
               nil?: true

      # @!attribute proration_billing_mode_on_downgrade
      #   Default proration billing mode for subscription plan downgrades (NULL = inherit
      #   from business)
      #
      #   @return [Symbol, Dodopayments::Models::ProductCollectionCreateParams::ProrationBillingModeOnDowngrade, nil]
      optional :proration_billing_mode_on_downgrade,
               enum: -> { Dodopayments::ProductCollectionCreateParams::ProrationBillingModeOnDowngrade },
               nil?: true

      # @!attribute proration_billing_mode_on_upgrade
      #   Default proration billing mode for subscription plan upgrades (NULL = inherit
      #   from business)
      #
      #   @return [Symbol, Dodopayments::Models::ProductCollectionCreateParams::ProrationBillingModeOnUpgrade, nil]
      optional :proration_billing_mode_on_upgrade,
               enum: -> { Dodopayments::ProductCollectionCreateParams::ProrationBillingModeOnUpgrade },
               nil?: true

      # @!method initialize(groups:, name:, brand_id: nil, description: nil, effective_at_on_downgrade: nil, effective_at_on_upgrade: nil, on_payment_failure: nil, proration_billing_mode_on_downgrade: nil, proration_billing_mode_on_upgrade: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ProductCollectionCreateParams} for more details.
      #
      #   @param groups [Array<Dodopayments::Models::ProductCollections::ProductCollectionGroupDetails>] Groups of products in this collection
      #
      #   @param name [String] Name of the product collection
      #
      #   @param brand_id [String, nil] Brand id for the collection, if not provided will default to primary brand
      #
      #   @param description [String, nil] Optional description of the product collection
      #
      #   @param effective_at_on_downgrade [Symbol, Dodopayments::Models::ProductCollectionCreateParams::EffectiveAtOnDowngrade, nil] Default effective_at setting for subscription plan downgrades (NULL = inherit fr
      #
      #   @param effective_at_on_upgrade [Symbol, Dodopayments::Models::ProductCollectionCreateParams::EffectiveAtOnUpgrade, nil] Default effective_at setting for subscription plan upgrades (NULL = inherit from
      #
      #   @param on_payment_failure [Symbol, Dodopayments::Models::ProductCollectionCreateParams::OnPaymentFailure, nil] Default behavior for subscription plan changes on payment failure (NULL = inheri
      #
      #   @param proration_billing_mode_on_downgrade [Symbol, Dodopayments::Models::ProductCollectionCreateParams::ProrationBillingModeOnDowngrade, nil] Default proration billing mode for subscription plan downgrades (NULL = inherit
      #
      #   @param proration_billing_mode_on_upgrade [Symbol, Dodopayments::Models::ProductCollectionCreateParams::ProrationBillingModeOnUpgrade, nil] Default proration billing mode for subscription plan upgrades (NULL = inherit fr
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      # Default effective_at setting for subscription plan downgrades (NULL = inherit
      # from business)
      module EffectiveAtOnDowngrade
        extend Dodopayments::Internal::Type::Enum

        IMMEDIATELY = :immediately
        NEXT_BILLING_DATE = :next_billing_date

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Default effective_at setting for subscription plan upgrades (NULL = inherit from
      # business)
      module EffectiveAtOnUpgrade
        extend Dodopayments::Internal::Type::Enum

        IMMEDIATELY = :immediately
        NEXT_BILLING_DATE = :next_billing_date

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Default behavior for subscription plan changes on payment failure (NULL =
      # inherit from business)
      module OnPaymentFailure
        extend Dodopayments::Internal::Type::Enum

        PREVENT_CHANGE = :prevent_change
        APPLY_CHANGE = :apply_change

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Default proration billing mode for subscription plan downgrades (NULL = inherit
      # from business)
      module ProrationBillingModeOnDowngrade
        extend Dodopayments::Internal::Type::Enum

        PRORATED_IMMEDIATELY = :prorated_immediately
        FULL_IMMEDIATELY = :full_immediately
        DIFFERENCE_IMMEDIATELY = :difference_immediately
        DO_NOT_BILL = :do_not_bill

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Default proration billing mode for subscription plan upgrades (NULL = inherit
      # from business)
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
