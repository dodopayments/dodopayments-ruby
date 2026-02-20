# typed: strong

module Dodopayments
  module Models
    class PaymentListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::PaymentListParams,
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

      # Filter by product id
      sig { returns(T.nilable(String)) }
      attr_reader :product_id

      sig { params(product_id: String).void }
      attr_writer :product_id

      # Filter by status
      sig do
        returns(T.nilable(Dodopayments::PaymentListParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: Dodopayments::PaymentListParams::Status::OrSymbol).void
      end
      attr_writer :status

      # Filter by subscription id
      sig { returns(T.nilable(String)) }
      attr_reader :subscription_id

      sig { params(subscription_id: String).void }
      attr_writer :subscription_id

      sig do
        params(
          brand_id: String,
          created_at_gte: Time,
          created_at_lte: Time,
          customer_id: String,
          page_number: Integer,
          page_size: Integer,
          product_id: String,
          status: Dodopayments::PaymentListParams::Status::OrSymbol,
          subscription_id: String,
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
        # Filter by product id
        product_id: nil,
        # Filter by status
        status: nil,
        # Filter by subscription id
        subscription_id: nil,
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
            product_id: String,
            status: Dodopayments::PaymentListParams::Status::OrSymbol,
            subscription_id: String,
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
            T.all(Symbol, Dodopayments::PaymentListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUCCEEDED =
          T.let(
            :succeeded,
            Dodopayments::PaymentListParams::Status::TaggedSymbol
          )
        FAILED =
          T.let(:failed, Dodopayments::PaymentListParams::Status::TaggedSymbol)
        CANCELLED =
          T.let(
            :cancelled,
            Dodopayments::PaymentListParams::Status::TaggedSymbol
          )
        PROCESSING =
          T.let(
            :processing,
            Dodopayments::PaymentListParams::Status::TaggedSymbol
          )
        REQUIRES_CUSTOMER_ACTION =
          T.let(
            :requires_customer_action,
            Dodopayments::PaymentListParams::Status::TaggedSymbol
          )
        REQUIRES_MERCHANT_ACTION =
          T.let(
            :requires_merchant_action,
            Dodopayments::PaymentListParams::Status::TaggedSymbol
          )
        REQUIRES_PAYMENT_METHOD =
          T.let(
            :requires_payment_method,
            Dodopayments::PaymentListParams::Status::TaggedSymbol
          )
        REQUIRES_CONFIRMATION =
          T.let(
            :requires_confirmation,
            Dodopayments::PaymentListParams::Status::TaggedSymbol
          )
        REQUIRES_CAPTURE =
          T.let(
            :requires_capture,
            Dodopayments::PaymentListParams::Status::TaggedSymbol
          )
        PARTIALLY_CAPTURED =
          T.let(
            :partially_captured,
            Dodopayments::PaymentListParams::Status::TaggedSymbol
          )
        PARTIALLY_CAPTURED_AND_CAPTURABLE =
          T.let(
            :partially_captured_and_capturable,
            Dodopayments::PaymentListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Dodopayments::PaymentListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
