# typed: strong

module Dodopayments
  module Models
    class ProductCollectionUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::ProductCollectionUpdateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Optional brand_id update
      sig { returns(T.nilable(String)) }
      attr_accessor :brand_id

      # Optional description update - pass null to remove, omit to keep unchanged
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Effective_at setting for downgrades: Some(Some(val)) = set, Some(None) = clear
      # (inherit), None = no change
      sig do
        returns(
          T.nilable(
            Dodopayments::ProductCollectionUpdateParams::EffectiveAtOnDowngrade::OrSymbol
          )
        )
      end
      attr_accessor :effective_at_on_downgrade

      # Effective_at setting for upgrades: Some(Some(val)) = set, Some(None) = clear
      # (inherit), None = no change
      sig do
        returns(
          T.nilable(
            Dodopayments::ProductCollectionUpdateParams::EffectiveAtOnUpgrade::OrSymbol
          )
        )
      end
      attr_accessor :effective_at_on_upgrade

      # Optional new order for groups (array of group UUIDs in desired order)
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :group_order

      # Optional image update - pass null to remove, omit to keep unchanged
      sig { returns(T.nilable(String)) }
      attr_accessor :image_id

      # Optional new name for the collection
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # On payment failure behavior: Some(Some(val)) = set, Some(None) = clear
      # (inherit), None = no change
      sig do
        returns(
          T.nilable(
            Dodopayments::ProductCollectionUpdateParams::OnPaymentFailure::OrSymbol
          )
        )
      end
      attr_accessor :on_payment_failure

      # Proration billing mode for downgrades: Some(Some(val)) = set, Some(None) = clear
      # (inherit), None = no change
      sig do
        returns(
          T.nilable(
            Dodopayments::ProductCollectionUpdateParams::ProrationBillingModeOnDowngrade::OrSymbol
          )
        )
      end
      attr_accessor :proration_billing_mode_on_downgrade

      # Proration billing mode for upgrades: Some(Some(val)) = set, Some(None) = clear
      # (inherit), None = no change
      sig do
        returns(
          T.nilable(
            Dodopayments::ProductCollectionUpdateParams::ProrationBillingModeOnUpgrade::OrSymbol
          )
        )
      end
      attr_accessor :proration_billing_mode_on_upgrade

      sig do
        params(
          id: String,
          brand_id: T.nilable(String),
          description: T.nilable(String),
          effective_at_on_downgrade:
            T.nilable(
              Dodopayments::ProductCollectionUpdateParams::EffectiveAtOnDowngrade::OrSymbol
            ),
          effective_at_on_upgrade:
            T.nilable(
              Dodopayments::ProductCollectionUpdateParams::EffectiveAtOnUpgrade::OrSymbol
            ),
          group_order: T.nilable(T::Array[String]),
          image_id: T.nilable(String),
          name: T.nilable(String),
          on_payment_failure:
            T.nilable(
              Dodopayments::ProductCollectionUpdateParams::OnPaymentFailure::OrSymbol
            ),
          proration_billing_mode_on_downgrade:
            T.nilable(
              Dodopayments::ProductCollectionUpdateParams::ProrationBillingModeOnDowngrade::OrSymbol
            ),
          proration_billing_mode_on_upgrade:
            T.nilable(
              Dodopayments::ProductCollectionUpdateParams::ProrationBillingModeOnUpgrade::OrSymbol
            ),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Optional brand_id update
        brand_id: nil,
        # Optional description update - pass null to remove, omit to keep unchanged
        description: nil,
        # Effective_at setting for downgrades: Some(Some(val)) = set, Some(None) = clear
        # (inherit), None = no change
        effective_at_on_downgrade: nil,
        # Effective_at setting for upgrades: Some(Some(val)) = set, Some(None) = clear
        # (inherit), None = no change
        effective_at_on_upgrade: nil,
        # Optional new order for groups (array of group UUIDs in desired order)
        group_order: nil,
        # Optional image update - pass null to remove, omit to keep unchanged
        image_id: nil,
        # Optional new name for the collection
        name: nil,
        # On payment failure behavior: Some(Some(val)) = set, Some(None) = clear
        # (inherit), None = no change
        on_payment_failure: nil,
        # Proration billing mode for downgrades: Some(Some(val)) = set, Some(None) = clear
        # (inherit), None = no change
        proration_billing_mode_on_downgrade: nil,
        # Proration billing mode for upgrades: Some(Some(val)) = set, Some(None) = clear
        # (inherit), None = no change
        proration_billing_mode_on_upgrade: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            brand_id: T.nilable(String),
            description: T.nilable(String),
            effective_at_on_downgrade:
              T.nilable(
                Dodopayments::ProductCollectionUpdateParams::EffectiveAtOnDowngrade::OrSymbol
              ),
            effective_at_on_upgrade:
              T.nilable(
                Dodopayments::ProductCollectionUpdateParams::EffectiveAtOnUpgrade::OrSymbol
              ),
            group_order: T.nilable(T::Array[String]),
            image_id: T.nilable(String),
            name: T.nilable(String),
            on_payment_failure:
              T.nilable(
                Dodopayments::ProductCollectionUpdateParams::OnPaymentFailure::OrSymbol
              ),
            proration_billing_mode_on_downgrade:
              T.nilable(
                Dodopayments::ProductCollectionUpdateParams::ProrationBillingModeOnDowngrade::OrSymbol
              ),
            proration_billing_mode_on_upgrade:
              T.nilable(
                Dodopayments::ProductCollectionUpdateParams::ProrationBillingModeOnUpgrade::OrSymbol
              ),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Effective_at setting for downgrades: Some(Some(val)) = set, Some(None) = clear
      # (inherit), None = no change
      module EffectiveAtOnDowngrade
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::ProductCollectionUpdateParams::EffectiveAtOnDowngrade
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IMMEDIATELY =
          T.let(
            :immediately,
            Dodopayments::ProductCollectionUpdateParams::EffectiveAtOnDowngrade::TaggedSymbol
          )
        NEXT_BILLING_DATE =
          T.let(
            :next_billing_date,
            Dodopayments::ProductCollectionUpdateParams::EffectiveAtOnDowngrade::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::ProductCollectionUpdateParams::EffectiveAtOnDowngrade::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Effective_at setting for upgrades: Some(Some(val)) = set, Some(None) = clear
      # (inherit), None = no change
      module EffectiveAtOnUpgrade
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::ProductCollectionUpdateParams::EffectiveAtOnUpgrade
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IMMEDIATELY =
          T.let(
            :immediately,
            Dodopayments::ProductCollectionUpdateParams::EffectiveAtOnUpgrade::TaggedSymbol
          )
        NEXT_BILLING_DATE =
          T.let(
            :next_billing_date,
            Dodopayments::ProductCollectionUpdateParams::EffectiveAtOnUpgrade::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::ProductCollectionUpdateParams::EffectiveAtOnUpgrade::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # On payment failure behavior: Some(Some(val)) = set, Some(None) = clear
      # (inherit), None = no change
      module OnPaymentFailure
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::ProductCollectionUpdateParams::OnPaymentFailure
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PREVENT_CHANGE =
          T.let(
            :prevent_change,
            Dodopayments::ProductCollectionUpdateParams::OnPaymentFailure::TaggedSymbol
          )
        APPLY_CHANGE =
          T.let(
            :apply_change,
            Dodopayments::ProductCollectionUpdateParams::OnPaymentFailure::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::ProductCollectionUpdateParams::OnPaymentFailure::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Proration billing mode for downgrades: Some(Some(val)) = set, Some(None) = clear
      # (inherit), None = no change
      module ProrationBillingModeOnDowngrade
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::ProductCollectionUpdateParams::ProrationBillingModeOnDowngrade
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRORATED_IMMEDIATELY =
          T.let(
            :prorated_immediately,
            Dodopayments::ProductCollectionUpdateParams::ProrationBillingModeOnDowngrade::TaggedSymbol
          )
        FULL_IMMEDIATELY =
          T.let(
            :full_immediately,
            Dodopayments::ProductCollectionUpdateParams::ProrationBillingModeOnDowngrade::TaggedSymbol
          )
        DIFFERENCE_IMMEDIATELY =
          T.let(
            :difference_immediately,
            Dodopayments::ProductCollectionUpdateParams::ProrationBillingModeOnDowngrade::TaggedSymbol
          )
        DO_NOT_BILL =
          T.let(
            :do_not_bill,
            Dodopayments::ProductCollectionUpdateParams::ProrationBillingModeOnDowngrade::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::ProductCollectionUpdateParams::ProrationBillingModeOnDowngrade::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Proration billing mode for upgrades: Some(Some(val)) = set, Some(None) = clear
      # (inherit), None = no change
      module ProrationBillingModeOnUpgrade
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::ProductCollectionUpdateParams::ProrationBillingModeOnUpgrade
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRORATED_IMMEDIATELY =
          T.let(
            :prorated_immediately,
            Dodopayments::ProductCollectionUpdateParams::ProrationBillingModeOnUpgrade::TaggedSymbol
          )
        FULL_IMMEDIATELY =
          T.let(
            :full_immediately,
            Dodopayments::ProductCollectionUpdateParams::ProrationBillingModeOnUpgrade::TaggedSymbol
          )
        DIFFERENCE_IMMEDIATELY =
          T.let(
            :difference_immediately,
            Dodopayments::ProductCollectionUpdateParams::ProrationBillingModeOnUpgrade::TaggedSymbol
          )
        DO_NOT_BILL =
          T.let(
            :do_not_bill,
            Dodopayments::ProductCollectionUpdateParams::ProrationBillingModeOnUpgrade::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::ProductCollectionUpdateParams::ProrationBillingModeOnUpgrade::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
