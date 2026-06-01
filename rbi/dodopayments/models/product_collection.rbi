# typed: strong

module Dodopayments
  module Models
    class ProductCollection < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::ProductCollection,
            Dodopayments::Internal::AnyHash
          )
        end

      # Unique identifier for the product collection
      sig { returns(String) }
      attr_accessor :id

      # Brand ID for the collection
      sig { returns(String) }
      attr_accessor :brand_id

      # Timestamp when the collection was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Groups in this collection
      sig do
        returns(
          T::Array[
            Dodopayments::ProductCollections::ProductCollectionGroupResponse
          ]
        )
      end
      attr_accessor :groups

      # Name of the collection
      sig { returns(String) }
      attr_accessor :name

      # Timestamp when the collection was last updated
      sig { returns(Time) }
      attr_accessor :updated_at

      # Description of the collection
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Default effective_at setting for subscription plan downgrades (null = inherit
      # from business)
      sig do
        returns(
          T.nilable(
            Dodopayments::ProductCollection::EffectiveAtOnDowngrade::TaggedSymbol
          )
        )
      end
      attr_accessor :effective_at_on_downgrade

      # Default effective_at setting for subscription plan upgrades (null = inherit from
      # business)
      sig do
        returns(
          T.nilable(
            Dodopayments::ProductCollection::EffectiveAtOnUpgrade::TaggedSymbol
          )
        )
      end
      attr_accessor :effective_at_on_upgrade

      # URL of the collection image
      sig { returns(T.nilable(String)) }
      attr_accessor :image

      # Default behavior for subscription plan changes on payment failure (null =
      # inherit from business)
      sig do
        returns(
          T.nilable(
            Dodopayments::ProductCollection::OnPaymentFailure::TaggedSymbol
          )
        )
      end
      attr_accessor :on_payment_failure

      # Default proration billing mode for subscription plan downgrades (null = inherit
      # from business)
      sig do
        returns(
          T.nilable(
            Dodopayments::ProductCollection::ProrationBillingModeOnDowngrade::TaggedSymbol
          )
        )
      end
      attr_accessor :proration_billing_mode_on_downgrade

      # Default proration billing mode for subscription plan upgrades (null = inherit
      # from business)
      sig do
        returns(
          T.nilable(
            Dodopayments::ProductCollection::ProrationBillingModeOnUpgrade::TaggedSymbol
          )
        )
      end
      attr_accessor :proration_billing_mode_on_upgrade

      sig do
        params(
          id: String,
          brand_id: String,
          created_at: Time,
          groups:
            T::Array[
              Dodopayments::ProductCollections::ProductCollectionGroupResponse::OrHash
            ],
          name: String,
          updated_at: Time,
          description: T.nilable(String),
          effective_at_on_downgrade:
            T.nilable(
              Dodopayments::ProductCollection::EffectiveAtOnDowngrade::OrSymbol
            ),
          effective_at_on_upgrade:
            T.nilable(
              Dodopayments::ProductCollection::EffectiveAtOnUpgrade::OrSymbol
            ),
          image: T.nilable(String),
          on_payment_failure:
            T.nilable(
              Dodopayments::ProductCollection::OnPaymentFailure::OrSymbol
            ),
          proration_billing_mode_on_downgrade:
            T.nilable(
              Dodopayments::ProductCollection::ProrationBillingModeOnDowngrade::OrSymbol
            ),
          proration_billing_mode_on_upgrade:
            T.nilable(
              Dodopayments::ProductCollection::ProrationBillingModeOnUpgrade::OrSymbol
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the product collection
        id:,
        # Brand ID for the collection
        brand_id:,
        # Timestamp when the collection was created
        created_at:,
        # Groups in this collection
        groups:,
        # Name of the collection
        name:,
        # Timestamp when the collection was last updated
        updated_at:,
        # Description of the collection
        description: nil,
        # Default effective_at setting for subscription plan downgrades (null = inherit
        # from business)
        effective_at_on_downgrade: nil,
        # Default effective_at setting for subscription plan upgrades (null = inherit from
        # business)
        effective_at_on_upgrade: nil,
        # URL of the collection image
        image: nil,
        # Default behavior for subscription plan changes on payment failure (null =
        # inherit from business)
        on_payment_failure: nil,
        # Default proration billing mode for subscription plan downgrades (null = inherit
        # from business)
        proration_billing_mode_on_downgrade: nil,
        # Default proration billing mode for subscription plan upgrades (null = inherit
        # from business)
        proration_billing_mode_on_upgrade: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            brand_id: String,
            created_at: Time,
            groups:
              T::Array[
                Dodopayments::ProductCollections::ProductCollectionGroupResponse
              ],
            name: String,
            updated_at: Time,
            description: T.nilable(String),
            effective_at_on_downgrade:
              T.nilable(
                Dodopayments::ProductCollection::EffectiveAtOnDowngrade::TaggedSymbol
              ),
            effective_at_on_upgrade:
              T.nilable(
                Dodopayments::ProductCollection::EffectiveAtOnUpgrade::TaggedSymbol
              ),
            image: T.nilable(String),
            on_payment_failure:
              T.nilable(
                Dodopayments::ProductCollection::OnPaymentFailure::TaggedSymbol
              ),
            proration_billing_mode_on_downgrade:
              T.nilable(
                Dodopayments::ProductCollection::ProrationBillingModeOnDowngrade::TaggedSymbol
              ),
            proration_billing_mode_on_upgrade:
              T.nilable(
                Dodopayments::ProductCollection::ProrationBillingModeOnUpgrade::TaggedSymbol
              )
          }
        )
      end
      def to_hash
      end

      # Default effective_at setting for subscription plan downgrades (null = inherit
      # from business)
      module EffectiveAtOnDowngrade
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::ProductCollection::EffectiveAtOnDowngrade
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IMMEDIATELY =
          T.let(
            :immediately,
            Dodopayments::ProductCollection::EffectiveAtOnDowngrade::TaggedSymbol
          )
        NEXT_BILLING_DATE =
          T.let(
            :next_billing_date,
            Dodopayments::ProductCollection::EffectiveAtOnDowngrade::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::ProductCollection::EffectiveAtOnDowngrade::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Default effective_at setting for subscription plan upgrades (null = inherit from
      # business)
      module EffectiveAtOnUpgrade
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::ProductCollection::EffectiveAtOnUpgrade)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IMMEDIATELY =
          T.let(
            :immediately,
            Dodopayments::ProductCollection::EffectiveAtOnUpgrade::TaggedSymbol
          )
        NEXT_BILLING_DATE =
          T.let(
            :next_billing_date,
            Dodopayments::ProductCollection::EffectiveAtOnUpgrade::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::ProductCollection::EffectiveAtOnUpgrade::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Default behavior for subscription plan changes on payment failure (null =
      # inherit from business)
      module OnPaymentFailure
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::ProductCollection::OnPaymentFailure)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PREVENT_CHANGE =
          T.let(
            :prevent_change,
            Dodopayments::ProductCollection::OnPaymentFailure::TaggedSymbol
          )
        APPLY_CHANGE =
          T.let(
            :apply_change,
            Dodopayments::ProductCollection::OnPaymentFailure::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::ProductCollection::OnPaymentFailure::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Default proration billing mode for subscription plan downgrades (null = inherit
      # from business)
      module ProrationBillingModeOnDowngrade
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::ProductCollection::ProrationBillingModeOnDowngrade
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRORATED_IMMEDIATELY =
          T.let(
            :prorated_immediately,
            Dodopayments::ProductCollection::ProrationBillingModeOnDowngrade::TaggedSymbol
          )
        FULL_IMMEDIATELY =
          T.let(
            :full_immediately,
            Dodopayments::ProductCollection::ProrationBillingModeOnDowngrade::TaggedSymbol
          )
        DIFFERENCE_IMMEDIATELY =
          T.let(
            :difference_immediately,
            Dodopayments::ProductCollection::ProrationBillingModeOnDowngrade::TaggedSymbol
          )
        DO_NOT_BILL =
          T.let(
            :do_not_bill,
            Dodopayments::ProductCollection::ProrationBillingModeOnDowngrade::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::ProductCollection::ProrationBillingModeOnDowngrade::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Default proration billing mode for subscription plan upgrades (null = inherit
      # from business)
      module ProrationBillingModeOnUpgrade
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::ProductCollection::ProrationBillingModeOnUpgrade
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRORATED_IMMEDIATELY =
          T.let(
            :prorated_immediately,
            Dodopayments::ProductCollection::ProrationBillingModeOnUpgrade::TaggedSymbol
          )
        FULL_IMMEDIATELY =
          T.let(
            :full_immediately,
            Dodopayments::ProductCollection::ProrationBillingModeOnUpgrade::TaggedSymbol
          )
        DIFFERENCE_IMMEDIATELY =
          T.let(
            :difference_immediately,
            Dodopayments::ProductCollection::ProrationBillingModeOnUpgrade::TaggedSymbol
          )
        DO_NOT_BILL =
          T.let(
            :do_not_bill,
            Dodopayments::ProductCollection::ProrationBillingModeOnUpgrade::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::ProductCollection::ProrationBillingModeOnUpgrade::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
