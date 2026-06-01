# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::ProductCollections#create
    class ProductCollection < Dodopayments::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the product collection
      #
      #   @return [String]
      required :id, String

      # @!attribute brand_id
      #   Brand ID for the collection
      #
      #   @return [String]
      required :brand_id, String

      # @!attribute created_at
      #   Timestamp when the collection was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute groups
      #   Groups in this collection
      #
      #   @return [Array<Dodopayments::Models::ProductCollections::ProductCollectionGroupResponse>]
      required :groups,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::ProductCollections::ProductCollectionGroupResponse] }

      # @!attribute name
      #   Name of the collection
      #
      #   @return [String]
      required :name, String

      # @!attribute updated_at
      #   Timestamp when the collection was last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute description
      #   Description of the collection
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute effective_at_on_downgrade
      #   Default effective_at setting for subscription plan downgrades (null = inherit
      #   from business)
      #
      #   @return [Symbol, Dodopayments::Models::ProductCollection::EffectiveAtOnDowngrade, nil]
      optional :effective_at_on_downgrade,
               enum: -> { Dodopayments::ProductCollection::EffectiveAtOnDowngrade },
               nil?: true

      # @!attribute effective_at_on_upgrade
      #   Default effective_at setting for subscription plan upgrades (null = inherit from
      #   business)
      #
      #   @return [Symbol, Dodopayments::Models::ProductCollection::EffectiveAtOnUpgrade, nil]
      optional :effective_at_on_upgrade,
               enum: -> { Dodopayments::ProductCollection::EffectiveAtOnUpgrade },
               nil?: true

      # @!attribute image
      #   URL of the collection image
      #
      #   @return [String, nil]
      optional :image, String, nil?: true

      # @!attribute on_payment_failure
      #   Default behavior for subscription plan changes on payment failure (null =
      #   inherit from business)
      #
      #   @return [Symbol, Dodopayments::Models::ProductCollection::OnPaymentFailure, nil]
      optional :on_payment_failure, enum: -> { Dodopayments::ProductCollection::OnPaymentFailure }, nil?: true

      # @!attribute proration_billing_mode_on_downgrade
      #   Default proration billing mode for subscription plan downgrades (null = inherit
      #   from business)
      #
      #   @return [Symbol, Dodopayments::Models::ProductCollection::ProrationBillingModeOnDowngrade, nil]
      optional :proration_billing_mode_on_downgrade,
               enum: -> { Dodopayments::ProductCollection::ProrationBillingModeOnDowngrade },
               nil?: true

      # @!attribute proration_billing_mode_on_upgrade
      #   Default proration billing mode for subscription plan upgrades (null = inherit
      #   from business)
      #
      #   @return [Symbol, Dodopayments::Models::ProductCollection::ProrationBillingModeOnUpgrade, nil]
      optional :proration_billing_mode_on_upgrade,
               enum: -> { Dodopayments::ProductCollection::ProrationBillingModeOnUpgrade },
               nil?: true

      # @!method initialize(id:, brand_id:, created_at:, groups:, name:, updated_at:, description: nil, effective_at_on_downgrade: nil, effective_at_on_upgrade: nil, image: nil, on_payment_failure: nil, proration_billing_mode_on_downgrade: nil, proration_billing_mode_on_upgrade: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ProductCollection} for more details.
      #
      #   @param id [String] Unique identifier for the product collection
      #
      #   @param brand_id [String] Brand ID for the collection
      #
      #   @param created_at [Time] Timestamp when the collection was created
      #
      #   @param groups [Array<Dodopayments::Models::ProductCollections::ProductCollectionGroupResponse>] Groups in this collection
      #
      #   @param name [String] Name of the collection
      #
      #   @param updated_at [Time] Timestamp when the collection was last updated
      #
      #   @param description [String, nil] Description of the collection
      #
      #   @param effective_at_on_downgrade [Symbol, Dodopayments::Models::ProductCollection::EffectiveAtOnDowngrade, nil] Default effective_at setting for subscription plan downgrades (null = inherit fr
      #
      #   @param effective_at_on_upgrade [Symbol, Dodopayments::Models::ProductCollection::EffectiveAtOnUpgrade, nil] Default effective_at setting for subscription plan upgrades (null = inherit from
      #
      #   @param image [String, nil] URL of the collection image
      #
      #   @param on_payment_failure [Symbol, Dodopayments::Models::ProductCollection::OnPaymentFailure, nil] Default behavior for subscription plan changes on payment failure (null = inheri
      #
      #   @param proration_billing_mode_on_downgrade [Symbol, Dodopayments::Models::ProductCollection::ProrationBillingModeOnDowngrade, nil] Default proration billing mode for subscription plan downgrades (null = inherit
      #
      #   @param proration_billing_mode_on_upgrade [Symbol, Dodopayments::Models::ProductCollection::ProrationBillingModeOnUpgrade, nil] Default proration billing mode for subscription plan upgrades (null = inherit fr

      # Default effective_at setting for subscription plan downgrades (null = inherit
      # from business)
      #
      # @see Dodopayments::Models::ProductCollection#effective_at_on_downgrade
      module EffectiveAtOnDowngrade
        extend Dodopayments::Internal::Type::Enum

        IMMEDIATELY = :immediately
        NEXT_BILLING_DATE = :next_billing_date

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Default effective_at setting for subscription plan upgrades (null = inherit from
      # business)
      #
      # @see Dodopayments::Models::ProductCollection#effective_at_on_upgrade
      module EffectiveAtOnUpgrade
        extend Dodopayments::Internal::Type::Enum

        IMMEDIATELY = :immediately
        NEXT_BILLING_DATE = :next_billing_date

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Default behavior for subscription plan changes on payment failure (null =
      # inherit from business)
      #
      # @see Dodopayments::Models::ProductCollection#on_payment_failure
      module OnPaymentFailure
        extend Dodopayments::Internal::Type::Enum

        PREVENT_CHANGE = :prevent_change
        APPLY_CHANGE = :apply_change

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Default proration billing mode for subscription plan downgrades (null = inherit
      # from business)
      #
      # @see Dodopayments::Models::ProductCollection#proration_billing_mode_on_downgrade
      module ProrationBillingModeOnDowngrade
        extend Dodopayments::Internal::Type::Enum

        PRORATED_IMMEDIATELY = :prorated_immediately
        FULL_IMMEDIATELY = :full_immediately
        DIFFERENCE_IMMEDIATELY = :difference_immediately
        DO_NOT_BILL = :do_not_bill

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Default proration billing mode for subscription plan upgrades (null = inherit
      # from business)
      #
      # @see Dodopayments::Models::ProductCollection#proration_billing_mode_on_upgrade
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
