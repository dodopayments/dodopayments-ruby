# typed: strong

module Dodopayments
  module Models
    class BrandRetrieveResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::BrandRetrieveResponse,
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
          Dodopayments::Models::BrandRetrieveResponse::VerificationStatus::TaggedSymbol
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
            Dodopayments::Models::BrandRetrieveResponse::VerificationStatus::OrSymbol,
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
              Dodopayments::Models::BrandRetrieveResponse::VerificationStatus::TaggedSymbol,
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
              Dodopayments::Models::BrandRetrieveResponse::VerificationStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUCCESS =
          T.let(
            :Success,
            Dodopayments::Models::BrandRetrieveResponse::VerificationStatus::TaggedSymbol
          )
        FAIL =
          T.let(
            :Fail,
            Dodopayments::Models::BrandRetrieveResponse::VerificationStatus::TaggedSymbol
          )
        REVIEW =
          T.let(
            :Review,
            Dodopayments::Models::BrandRetrieveResponse::VerificationStatus::TaggedSymbol
          )
        HOLD =
          T.let(
            :Hold,
            Dodopayments::Models::BrandRetrieveResponse::VerificationStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::Models::BrandRetrieveResponse::VerificationStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
