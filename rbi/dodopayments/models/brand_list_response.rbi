# typed: strong

module Dodopayments
  module Models
    class BrandListResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::BrandListResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # List of brands for this business
      sig { returns(T::Array[Dodopayments::Models::BrandListResponse::Item]) }
      attr_accessor :items

      sig do
        params(
          items: T::Array[Dodopayments::Models::BrandListResponse::Item::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # List of brands for this business
        items:
      )
      end

      sig do
        override.returns(
          { items: T::Array[Dodopayments::Models::BrandListResponse::Item] }
        )
      end
      def to_hash
      end

      class Item < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::BrandListResponse::Item,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :brand_id

        sig { returns(String) }
        attr_accessor :business_id

        sig { returns(T::Boolean) }
        attr_accessor :enabled

        sig { returns(String) }
        attr_accessor :statement_descriptor

        sig { returns(T::Boolean) }
        attr_accessor :verification_enabled

        sig do
          returns(
            Dodopayments::Models::BrandListResponse::Item::VerificationStatus::TaggedSymbol
          )
        end
        attr_accessor :verification_status

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(T.nilable(String)) }
        attr_accessor :image

        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Incase the brand verification fails or is put on hold
        sig { returns(T.nilable(String)) }
        attr_accessor :reason_for_hold

        sig { returns(T.nilable(String)) }
        attr_accessor :support_email

        sig { returns(T.nilable(String)) }
        attr_accessor :url

        sig do
          params(
            brand_id: String,
            business_id: String,
            enabled: T::Boolean,
            statement_descriptor: String,
            verification_enabled: T::Boolean,
            verification_status:
              Dodopayments::Models::BrandListResponse::Item::VerificationStatus::OrSymbol,
            description: T.nilable(String),
            image: T.nilable(String),
            name: T.nilable(String),
            reason_for_hold: T.nilable(String),
            support_email: T.nilable(String),
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          brand_id:,
          business_id:,
          enabled:,
          statement_descriptor:,
          verification_enabled:,
          verification_status:,
          description: nil,
          image: nil,
          name: nil,
          # Incase the brand verification fails or is put on hold
          reason_for_hold: nil,
          support_email: nil,
          url: nil
        )
        end

        sig do
          override.returns(
            {
              brand_id: String,
              business_id: String,
              enabled: T::Boolean,
              statement_descriptor: String,
              verification_enabled: T::Boolean,
              verification_status:
                Dodopayments::Models::BrandListResponse::Item::VerificationStatus::TaggedSymbol,
              description: T.nilable(String),
              image: T.nilable(String),
              name: T.nilable(String),
              reason_for_hold: T.nilable(String),
              support_email: T.nilable(String),
              url: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        module VerificationStatus
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Dodopayments::Models::BrandListResponse::Item::VerificationStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUCCESS =
            T.let(
              :Success,
              Dodopayments::Models::BrandListResponse::Item::VerificationStatus::TaggedSymbol
            )
          FAIL =
            T.let(
              :Fail,
              Dodopayments::Models::BrandListResponse::Item::VerificationStatus::TaggedSymbol
            )
          REVIEW =
            T.let(
              :Review,
              Dodopayments::Models::BrandListResponse::Item::VerificationStatus::TaggedSymbol
            )
          HOLD =
            T.let(
              :Hold,
              Dodopayments::Models::BrandListResponse::Item::VerificationStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::Models::BrandListResponse::Item::VerificationStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
