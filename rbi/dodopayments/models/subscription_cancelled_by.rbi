# typed: strong

module Dodopayments
  module Models
    class SubscriptionCancelledBy < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::SubscriptionCancelledBy,
            Dodopayments::Internal::AnyHash
          )
        end

      # The kind of caller.
      sig do
        returns(Dodopayments::SubscriptionCancelledBy::ActorType::TaggedSymbol)
      end
      attr_accessor :actor_type

      # Email of the customer or of the dashboard user. `null` for an API key or the
      # Dodo Payments team.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # Name of the customer or of the dashboard user. `null` for an API key or the Dodo
      # Payments team.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The caller that cancelled a subscription or scheduled its cancel.
      sig do
        params(
          actor_type:
            Dodopayments::SubscriptionCancelledBy::ActorType::OrSymbol,
          email: T.nilable(String),
          name: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The kind of caller.
        actor_type:,
        # Email of the customer or of the dashboard user. `null` for an API key or the
        # Dodo Payments team.
        email: nil,
        # Name of the customer or of the dashboard user. `null` for an API key or the Dodo
        # Payments team.
        name: nil
      )
      end

      sig do
        override.returns(
          {
            actor_type:
              Dodopayments::SubscriptionCancelledBy::ActorType::TaggedSymbol,
            email: T.nilable(String),
            name: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The kind of caller.
      module ActorType
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::SubscriptionCancelledBy::ActorType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CUSTOMER =
          T.let(
            :customer,
            Dodopayments::SubscriptionCancelledBy::ActorType::TaggedSymbol
          )
        MERCHANT_USER =
          T.let(
            :merchant_user,
            Dodopayments::SubscriptionCancelledBy::ActorType::TaggedSymbol
          )
        API_KEY =
          T.let(
            :api_key,
            Dodopayments::SubscriptionCancelledBy::ActorType::TaggedSymbol
          )
        DODO_TEAM =
          T.let(
            :dodo_team,
            Dodopayments::SubscriptionCancelledBy::ActorType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::SubscriptionCancelledBy::ActorType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
