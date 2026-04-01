# typed: strong

module Dodopayments
  module Models
    module Payouts
      module Breakup
        class DetailListResponse < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Models::Payouts::Breakup::DetailListResponse,
                Dodopayments::Internal::AnyHash
              )
            end

          # Unique identifier of the balance ledger entry.
          sig { returns(String) }
          attr_accessor :id

          # Timestamp when this entry was created.
          sig { returns(Time) }
          attr_accessor :created_at

          # The type of balance ledger event (e.g., "payment", "refund", "dispute",
          # "payment_fees").
          sig { returns(String) }
          attr_accessor :event_type

          # Original amount in the original currency (in smallest currency unit, e.g.,
          # cents).
          sig { returns(Integer) }
          attr_accessor :original_amount

          # Original currency as ISO 4217 code (e.g., "USD", "EUR").
          sig { returns(String) }
          attr_accessor :original_currency

          # Amount in the payout's currency (in smallest currency unit). Uses cumulative
          # rounding to ensure sum matches payout total exactly.
          sig { returns(Integer) }
          attr_accessor :payout_currency_amount

          # USD equivalent of the original amount (in cents).
          sig { returns(Integer) }
          attr_accessor :usd_equivalent_amount

          # Human-readable description of the transaction.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # ID of the related object (e.g., payment ID, refund ID) if applicable.
          sig { returns(T.nilable(String)) }
          attr_accessor :reference_object_id

          # Individual balance ledger entry for a payout, with amounts pro-rated into the
          # payout's currency.
          sig do
            params(
              id: String,
              created_at: Time,
              event_type: String,
              original_amount: Integer,
              original_currency: String,
              payout_currency_amount: Integer,
              usd_equivalent_amount: Integer,
              description: T.nilable(String),
              reference_object_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique identifier of the balance ledger entry.
            id:,
            # Timestamp when this entry was created.
            created_at:,
            # The type of balance ledger event (e.g., "payment", "refund", "dispute",
            # "payment_fees").
            event_type:,
            # Original amount in the original currency (in smallest currency unit, e.g.,
            # cents).
            original_amount:,
            # Original currency as ISO 4217 code (e.g., "USD", "EUR").
            original_currency:,
            # Amount in the payout's currency (in smallest currency unit). Uses cumulative
            # rounding to ensure sum matches payout total exactly.
            payout_currency_amount:,
            # USD equivalent of the original amount (in cents).
            usd_equivalent_amount:,
            # Human-readable description of the transaction.
            description: nil,
            # ID of the related object (e.g., payment ID, refund ID) if applicable.
            reference_object_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                event_type: String,
                original_amount: Integer,
                original_currency: String,
                payout_currency_amount: Integer,
                usd_equivalent_amount: Integer,
                description: T.nilable(String),
                reference_object_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
