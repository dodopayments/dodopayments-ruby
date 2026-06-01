# typed: strong

module Dodopayments
  module Models
    class ProductCollectionCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::ProductCollectionCreateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # Groups of products in this collection
      sig do
        returns(
          T::Array[
            Dodopayments::ProductCollections::ProductCollectionGroupDetails
          ]
        )
      end
      attr_accessor :groups

      # Name of the product collection
      sig { returns(String) }
      attr_accessor :name

      # Brand id for the collection, if not provided will default to primary brand
      sig { returns(T.nilable(String)) }
      attr_accessor :brand_id

      # Optional description of the product collection
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Default effective_at setting for subscription plan downgrades (NULL = inherit
      # from business)
      sig do
        returns(
          T.nilable(
            Dodopayments::ProductCollectionCreateParams::EffectiveAtOnDowngrade::OrSymbol
          )
        )
      end
      attr_accessor :effective_at_on_downgrade

      # Default effective_at setting for subscription plan upgrades (NULL = inherit from
      # business)
      sig do
        returns(
          T.nilable(
            Dodopayments::ProductCollectionCreateParams::EffectiveAtOnUpgrade::OrSymbol
          )
        )
      end
      attr_accessor :effective_at_on_upgrade

      # Default behavior for subscription plan changes on payment failure (NULL =
      # inherit from business)
      sig do
        returns(
          T.nilable(
            Dodopayments::ProductCollectionCreateParams::OnPaymentFailure::OrSymbol
          )
        )
      end
      attr_accessor :on_payment_failure

      # Default proration billing mode for subscription plan downgrades (NULL = inherit
      # from business)
      sig do
        returns(
          T.nilable(
            Dodopayments::ProductCollectionCreateParams::ProrationBillingModeOnDowngrade::OrSymbol
          )
        )
      end
      attr_accessor :proration_billing_mode_on_downgrade

      # Default proration billing mode for subscription plan upgrades (NULL = inherit
      # from business)
      sig do
        returns(
          T.nilable(
            Dodopayments::ProductCollectionCreateParams::ProrationBillingModeOnUpgrade::OrSymbol
          )
        )
      end
      attr_accessor :proration_billing_mode_on_upgrade

      sig do
        params(
          groups:
            T::Array[
              Dodopayments::ProductCollections::ProductCollectionGroupDetails::OrHash
            ],
          name: String,
          brand_id: T.nilable(String),
          description: T.nilable(String),
          effective_at_on_downgrade:
            T.nilable(
              Dodopayments::ProductCollectionCreateParams::EffectiveAtOnDowngrade::OrSymbol
            ),
          effective_at_on_upgrade:
            T.nilable(
              Dodopayments::ProductCollectionCreateParams::EffectiveAtOnUpgrade::OrSymbol
            ),
          on_payment_failure:
            T.nilable(
              Dodopayments::ProductCollectionCreateParams::OnPaymentFailure::OrSymbol
            ),
          proration_billing_mode_on_downgrade:
            T.nilable(
              Dodopayments::ProductCollectionCreateParams::ProrationBillingModeOnDowngrade::OrSymbol
            ),
          proration_billing_mode_on_upgrade:
            T.nilable(
              Dodopayments::ProductCollectionCreateParams::ProrationBillingModeOnUpgrade::OrSymbol
            ),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Groups of products in this collection
        groups:,
        # Name of the product collection
        name:,
        # Brand id for the collection, if not provided will default to primary brand
        brand_id: nil,
        # Optional description of the product collection
        description: nil,
        # Default effective_at setting for subscription plan downgrades (NULL = inherit
        # from business)
        effective_at_on_downgrade: nil,
        # Default effective_at setting for subscription plan upgrades (NULL = inherit from
        # business)
        effective_at_on_upgrade: nil,
        # Default behavior for subscription plan changes on payment failure (NULL =
        # inherit from business)
        on_payment_failure: nil,
        # Default proration billing mode for subscription plan downgrades (NULL = inherit
        # from business)
        proration_billing_mode_on_downgrade: nil,
        # Default proration billing mode for subscription plan upgrades (NULL = inherit
        # from business)
        proration_billing_mode_on_upgrade: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            groups:
              T::Array[
                Dodopayments::ProductCollections::ProductCollectionGroupDetails
              ],
            name: String,
            brand_id: T.nilable(String),
            description: T.nilable(String),
            effective_at_on_downgrade:
              T.nilable(
                Dodopayments::ProductCollectionCreateParams::EffectiveAtOnDowngrade::OrSymbol
              ),
            effective_at_on_upgrade:
              T.nilable(
                Dodopayments::ProductCollectionCreateParams::EffectiveAtOnUpgrade::OrSymbol
              ),
            on_payment_failure:
              T.nilable(
                Dodopayments::ProductCollectionCreateParams::OnPaymentFailure::OrSymbol
              ),
            proration_billing_mode_on_downgrade:
              T.nilable(
                Dodopayments::ProductCollectionCreateParams::ProrationBillingModeOnDowngrade::OrSymbol
              ),
            proration_billing_mode_on_upgrade:
              T.nilable(
                Dodopayments::ProductCollectionCreateParams::ProrationBillingModeOnUpgrade::OrSymbol
              ),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Default effective_at setting for subscription plan downgrades (NULL = inherit
      # from business)
      module EffectiveAtOnDowngrade
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::ProductCollectionCreateParams::EffectiveAtOnDowngrade
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IMMEDIATELY =
          T.let(
            :immediately,
            Dodopayments::ProductCollectionCreateParams::EffectiveAtOnDowngrade::TaggedSymbol
          )
        NEXT_BILLING_DATE =
          T.let(
            :next_billing_date,
            Dodopayments::ProductCollectionCreateParams::EffectiveAtOnDowngrade::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::ProductCollectionCreateParams::EffectiveAtOnDowngrade::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Default effective_at setting for subscription plan upgrades (NULL = inherit from
      # business)
      module EffectiveAtOnUpgrade
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::ProductCollectionCreateParams::EffectiveAtOnUpgrade
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IMMEDIATELY =
          T.let(
            :immediately,
            Dodopayments::ProductCollectionCreateParams::EffectiveAtOnUpgrade::TaggedSymbol
          )
        NEXT_BILLING_DATE =
          T.let(
            :next_billing_date,
            Dodopayments::ProductCollectionCreateParams::EffectiveAtOnUpgrade::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::ProductCollectionCreateParams::EffectiveAtOnUpgrade::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Default behavior for subscription plan changes on payment failure (NULL =
      # inherit from business)
      module OnPaymentFailure
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::ProductCollectionCreateParams::OnPaymentFailure
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PREVENT_CHANGE =
          T.let(
            :prevent_change,
            Dodopayments::ProductCollectionCreateParams::OnPaymentFailure::TaggedSymbol
          )
        APPLY_CHANGE =
          T.let(
            :apply_change,
            Dodopayments::ProductCollectionCreateParams::OnPaymentFailure::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::ProductCollectionCreateParams::OnPaymentFailure::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Default proration billing mode for subscription plan downgrades (NULL = inherit
      # from business)
      module ProrationBillingModeOnDowngrade
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::ProductCollectionCreateParams::ProrationBillingModeOnDowngrade
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRORATED_IMMEDIATELY =
          T.let(
            :prorated_immediately,
            Dodopayments::ProductCollectionCreateParams::ProrationBillingModeOnDowngrade::TaggedSymbol
          )
        FULL_IMMEDIATELY =
          T.let(
            :full_immediately,
            Dodopayments::ProductCollectionCreateParams::ProrationBillingModeOnDowngrade::TaggedSymbol
          )
        DIFFERENCE_IMMEDIATELY =
          T.let(
            :difference_immediately,
            Dodopayments::ProductCollectionCreateParams::ProrationBillingModeOnDowngrade::TaggedSymbol
          )
        DO_NOT_BILL =
          T.let(
            :do_not_bill,
            Dodopayments::ProductCollectionCreateParams::ProrationBillingModeOnDowngrade::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::ProductCollectionCreateParams::ProrationBillingModeOnDowngrade::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Default proration billing mode for subscription plan upgrades (NULL = inherit
      # from business)
      module ProrationBillingModeOnUpgrade
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::ProductCollectionCreateParams::ProrationBillingModeOnUpgrade
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRORATED_IMMEDIATELY =
          T.let(
            :prorated_immediately,
            Dodopayments::ProductCollectionCreateParams::ProrationBillingModeOnUpgrade::TaggedSymbol
          )
        FULL_IMMEDIATELY =
          T.let(
            :full_immediately,
            Dodopayments::ProductCollectionCreateParams::ProrationBillingModeOnUpgrade::TaggedSymbol
          )
        DIFFERENCE_IMMEDIATELY =
          T.let(
            :difference_immediately,
            Dodopayments::ProductCollectionCreateParams::ProrationBillingModeOnUpgrade::TaggedSymbol
          )
        DO_NOT_BILL =
          T.let(
            :do_not_bill,
            Dodopayments::ProductCollectionCreateParams::ProrationBillingModeOnUpgrade::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::ProductCollectionCreateParams::ProrationBillingModeOnUpgrade::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
