# typed: strong

module Dodopayments
  module Models
    class Customer < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::Customer, Dodopayments::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :business_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(String) }
      attr_accessor :email

      sig { returns(String) }
      attr_accessor :name

      # When the merchant blocked this customer. The dashboard shows the "Blocked" badge
      # and the unblock action from it. The list route leaves it empty; only the
      # single-customer route resolves it.
      sig { returns(T.nilable(Time)) }
      attr_accessor :blocked_at

      # Blocklist entry behind `blocked_at`, so the dashboard can link to it.
      sig { returns(T.nilable(String)) }
      attr_accessor :blocklist_entry_id

      # Additional metadata for the customer
      sig do
        returns(
          T.nilable(T::Hash[Symbol, Dodopayments::MetadataItem::Variants])
        )
      end
      attr_reader :metadata

      sig do
        params(
          metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants]
        ).void
      end
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_accessor :phone_number

      sig do
        params(
          business_id: String,
          created_at: Time,
          customer_id: String,
          email: String,
          name: String,
          blocked_at: T.nilable(Time),
          blocklist_entry_id: T.nilable(String),
          metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants],
          phone_number: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        business_id:,
        created_at:,
        customer_id:,
        email:,
        name:,
        # When the merchant blocked this customer. The dashboard shows the "Blocked" badge
        # and the unblock action from it. The list route leaves it empty; only the
        # single-customer route resolves it.
        blocked_at: nil,
        # Blocklist entry behind `blocked_at`, so the dashboard can link to it.
        blocklist_entry_id: nil,
        # Additional metadata for the customer
        metadata: nil,
        phone_number: nil
      )
      end

      sig do
        override.returns(
          {
            business_id: String,
            created_at: Time,
            customer_id: String,
            email: String,
            name: String,
            blocked_at: T.nilable(Time),
            blocklist_entry_id: T.nilable(String),
            metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants],
            phone_number: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
