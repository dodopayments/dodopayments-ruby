# typed: strong

module Dodopayments
  module Models
    class SubscriptionListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::SubscriptionListParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # filter by Brand id
      sig { returns(T.nilable(String)) }
      attr_reader :brand_id

      sig { params(brand_id: String).void }
      attr_writer :brand_id

      # Get events after this created time
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_gte

      sig { params(created_at_gte: Time).void }
      attr_writer :created_at_gte

      # Get events created before this time
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_lte

      sig { params(created_at_lte: Time).void }
      attr_writer :created_at_lte

      # Filter by customer id
      sig { returns(T.nilable(String)) }
      attr_reader :customer_id

      sig { params(customer_id: String).void }
      attr_writer :customer_id

      # Page number default is 0
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Page size default is 10 max is 100
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Filter by status
      sig do
        returns(
          T.nilable(Dodopayments::SubscriptionListParams::Status::OrSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: Dodopayments::SubscriptionListParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          brand_id: String,
          created_at_gte: Time,
          created_at_lte: Time,
          customer_id: String,
          page_number: Integer,
          page_size: Integer,
          status: Dodopayments::SubscriptionListParams::Status::OrSymbol,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # filter by Brand id
        brand_id: nil,
        # Get events after this created time
        created_at_gte: nil,
        # Get events created before this time
        created_at_lte: nil,
        # Filter by customer id
        customer_id: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        # Filter by status
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            brand_id: String,
            created_at_gte: Time,
            created_at_lte: Time,
            customer_id: String,
            page_number: Integer,
            page_size: Integer,
            status: Dodopayments::SubscriptionListParams::Status::OrSymbol,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by status
      module Status
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::SubscriptionListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Dodopayments::SubscriptionListParams::Status::TaggedSymbol
          )
        ACTIVE =
          T.let(
            :active,
            Dodopayments::SubscriptionListParams::Status::TaggedSymbol
          )
        ON_HOLD =
          T.let(
            :on_hold,
            Dodopayments::SubscriptionListParams::Status::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :cancelled,
            Dodopayments::SubscriptionListParams::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            Dodopayments::SubscriptionListParams::Status::TaggedSymbol
          )
        EXPIRED =
          T.let(
            :expired,
            Dodopayments::SubscriptionListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Dodopayments::SubscriptionListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
