# typed: strong

module Dodopayments
  module Models
    module Blocklist
      module Customers
        class BlockedCustomerNote < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Blocklist::Customers::BlockedCustomerNote,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(String) }
          attr_accessor :note

          sig { returns(T.nilable(String)) }
          attr_accessor :author_email

          sig { returns(T.nilable(Time)) }
          attr_accessor :updated_at

          sig do
            params(
              id: String,
              created_at: Time,
              note: String,
              author_email: T.nilable(String),
              updated_at: T.nilable(Time)
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            created_at:,
            note:,
            author_email: nil,
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                note: String,
                author_email: T.nilable(String),
                updated_at: T.nilable(Time)
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
