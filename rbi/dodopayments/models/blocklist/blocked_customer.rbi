# typed: strong

module Dodopayments
  module Models
    module Blocklist
      class BlockedCustomer < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Blocklist::BlockedCustomer,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :customer_email

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(String) }
        attr_accessor :customer_name

        # Customer id or email that the merchant supplied.
        sig { returns(String) }
        attr_accessor :identifier

        # Where a block came from. `Api` marks an API-key caller, which carries no
        # dashboard actor. The other values name the screen the merchant used.
        sig do
          returns(Dodopayments::Blocklist::BlockedCustomerSource::TaggedSymbol)
        end
        attr_accessor :source

        # Dashboard user who blocked the customer. `null` for an API-key caller.
        sig { returns(T.nilable(String)) }
        attr_accessor :blocked_by_email

        # Subscriptions this block cancelled. Present on the create response only.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :cancelled_subscription_ids

        # Activity log. Present on the detail response only.
        sig do
          returns(
            T.nilable(
              T::Array[Dodopayments::Blocklist::Customers::BlockedCustomerNote]
            )
          )
        end
        attr_accessor :notes

        sig { returns(T.nilable(String)) }
        attr_accessor :reason

        # Subscriptions this block left live, because the cancel failed or the inline
        # batch filled up. Repeat the create call to continue; the block itself is already
        # in force.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :remaining_subscription_ids

        # False when the block left live subscriptions behind, including the case where
        # the sweep could not list them and `remaining_subscription_ids` is therefore
        # unknown. Repeat the create call until it reads true.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :subscriptions_swept

        sig { returns(T.nilable(Time)) }
        attr_accessor :unblocked_at

        sig do
          params(
            id: String,
            created_at: Time,
            customer_email: String,
            customer_id: String,
            customer_name: String,
            identifier: String,
            source: Dodopayments::Blocklist::BlockedCustomerSource::OrSymbol,
            blocked_by_email: T.nilable(String),
            cancelled_subscription_ids: T.nilable(T::Array[String]),
            notes:
              T.nilable(
                T::Array[
                  Dodopayments::Blocklist::Customers::BlockedCustomerNote::OrHash
                ]
              ),
            reason: T.nilable(String),
            remaining_subscription_ids: T.nilable(T::Array[String]),
            subscriptions_swept: T.nilable(T::Boolean),
            unblocked_at: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          customer_email:,
          customer_id:,
          customer_name:,
          # Customer id or email that the merchant supplied.
          identifier:,
          # Where a block came from. `Api` marks an API-key caller, which carries no
          # dashboard actor. The other values name the screen the merchant used.
          source:,
          # Dashboard user who blocked the customer. `null` for an API-key caller.
          blocked_by_email: nil,
          # Subscriptions this block cancelled. Present on the create response only.
          cancelled_subscription_ids: nil,
          # Activity log. Present on the detail response only.
          notes: nil,
          reason: nil,
          # Subscriptions this block left live, because the cancel failed or the inline
          # batch filled up. Repeat the create call to continue; the block itself is already
          # in force.
          remaining_subscription_ids: nil,
          # False when the block left live subscriptions behind, including the case where
          # the sweep could not list them and `remaining_subscription_ids` is therefore
          # unknown. Repeat the create call until it reads true.
          subscriptions_swept: nil,
          unblocked_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              customer_email: String,
              customer_id: String,
              customer_name: String,
              identifier: String,
              source:
                Dodopayments::Blocklist::BlockedCustomerSource::TaggedSymbol,
              blocked_by_email: T.nilable(String),
              cancelled_subscription_ids: T.nilable(T::Array[String]),
              notes:
                T.nilable(
                  T::Array[
                    Dodopayments::Blocklist::Customers::BlockedCustomerNote
                  ]
                ),
              reason: T.nilable(String),
              remaining_subscription_ids: T.nilable(T::Array[String]),
              subscriptions_swept: T.nilable(T::Boolean),
              unblocked_at: T.nilable(Time)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
