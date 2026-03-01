# typed: strong

module Dodopayments
  module Models
    module CreditEntitlements
      class BalanceListGrantsResponse < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::CreditEntitlements::BalanceListGrantsResponse,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :credit_entitlement_id

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(String) }
        attr_accessor :initial_amount

        sig { returns(T::Boolean) }
        attr_accessor :is_expired

        sig { returns(T::Boolean) }
        attr_accessor :is_rolled_over

        sig { returns(String) }
        attr_accessor :remaining_amount

        sig { returns(Integer) }
        attr_accessor :rollover_count

        sig do
          returns(
            Dodopayments::Models::CreditEntitlements::BalanceListGrantsResponse::SourceType::TaggedSymbol
          )
        end
        attr_accessor :source_type

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :expires_at

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_accessor :metadata

        sig { returns(T.nilable(String)) }
        attr_accessor :parent_grant_id

        sig { returns(T.nilable(String)) }
        attr_accessor :source_id

        # Response for a credit grant
        sig do
          params(
            id: String,
            created_at: Time,
            credit_entitlement_id: String,
            customer_id: String,
            initial_amount: String,
            is_expired: T::Boolean,
            is_rolled_over: T::Boolean,
            remaining_amount: String,
            rollover_count: Integer,
            source_type:
              Dodopayments::Models::CreditEntitlements::BalanceListGrantsResponse::SourceType::OrSymbol,
            updated_at: Time,
            expires_at: T.nilable(Time),
            metadata: T.nilable(T::Hash[Symbol, String]),
            parent_grant_id: T.nilable(String),
            source_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          credit_entitlement_id:,
          customer_id:,
          initial_amount:,
          is_expired:,
          is_rolled_over:,
          remaining_amount:,
          rollover_count:,
          source_type:,
          updated_at:,
          expires_at: nil,
          metadata: nil,
          parent_grant_id: nil,
          source_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              credit_entitlement_id: String,
              customer_id: String,
              initial_amount: String,
              is_expired: T::Boolean,
              is_rolled_over: T::Boolean,
              remaining_amount: String,
              rollover_count: Integer,
              source_type:
                Dodopayments::Models::CreditEntitlements::BalanceListGrantsResponse::SourceType::TaggedSymbol,
              updated_at: Time,
              expires_at: T.nilable(Time),
              metadata: T.nilable(T::Hash[Symbol, String]),
              parent_grant_id: T.nilable(String),
              source_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        module SourceType
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Dodopayments::Models::CreditEntitlements::BalanceListGrantsResponse::SourceType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUBSCRIPTION =
            T.let(
              :subscription,
              Dodopayments::Models::CreditEntitlements::BalanceListGrantsResponse::SourceType::TaggedSymbol
            )
          ONE_TIME =
            T.let(
              :one_time,
              Dodopayments::Models::CreditEntitlements::BalanceListGrantsResponse::SourceType::TaggedSymbol
            )
          ADDON =
            T.let(
              :addon,
              Dodopayments::Models::CreditEntitlements::BalanceListGrantsResponse::SourceType::TaggedSymbol
            )
          API =
            T.let(
              :api,
              Dodopayments::Models::CreditEntitlements::BalanceListGrantsResponse::SourceType::TaggedSymbol
            )
          ROLLOVER =
            T.let(
              :rollover,
              Dodopayments::Models::CreditEntitlements::BalanceListGrantsResponse::SourceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::Models::CreditEntitlements::BalanceListGrantsResponse::SourceType::TaggedSymbol
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
