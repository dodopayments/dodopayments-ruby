# typed: strong

module Dodopayments
  module Models
    class InvoiceListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::InvoiceListParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Dodopayments::InvoiceListParams::CollectionMethod::OrSymbol)
        )
      end
      attr_reader :collection_method

      sig do
        params(
          collection_method:
            Dodopayments::InvoiceListParams::CollectionMethod::OrSymbol
        ).void
      end
      attr_writer :collection_method

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_gte

      sig { params(created_at_gte: Time).void }
      attr_writer :created_at_gte

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_lte

      sig { params(created_at_lte: Time).void }
      attr_writer :created_at_lte

      sig { returns(T.nilable(String)) }
      attr_reader :customer_id

      sig { params(customer_id: String).void }
      attr_writer :customer_id

      sig { returns(T.nilable(Time)) }
      attr_reader :due_at_gte

      sig { params(due_at_gte: Time).void }
      attr_writer :due_at_gte

      sig { returns(T.nilable(Time)) }
      attr_reader :due_at_lte

      sig { params(due_at_lte: Time).void }
      attr_writer :due_at_lte

      # Page number. The default is 0.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Page size. The default is 10 and the maximum is 100.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Repeat the key to match more than one status, for example
      # `status=open&status=past_due`.
      sig do
        returns(
          T.nilable(T::Array[Dodopayments::InvoiceListParams::Status::OrSymbol])
        )
      end
      attr_reader :status

      sig do
        params(
          status: T::Array[Dodopayments::InvoiceListParams::Status::OrSymbol]
        ).void
      end
      attr_writer :status

      sig { returns(T.nilable(String)) }
      attr_reader :subscription_id

      sig { params(subscription_id: String).void }
      attr_writer :subscription_id

      # Repeat the key to match an invoice that has any one of the tags.
      sig do
        returns(
          T.nilable(T::Array[Dodopayments::InvoiceListParams::Tag::OrSymbol])
        )
      end
      attr_reader :tags

      sig do
        params(
          tags: T::Array[Dodopayments::InvoiceListParams::Tag::OrSymbol]
        ).void
      end
      attr_writer :tags

      sig { returns(T.nilable(Integer)) }
      attr_reader :total_amount_gte

      sig { params(total_amount_gte: Integer).void }
      attr_writer :total_amount_gte

      sig { returns(T.nilable(Integer)) }
      attr_reader :total_amount_lte

      sig { params(total_amount_lte: Integer).void }
      attr_writer :total_amount_lte

      sig do
        params(
          collection_method:
            Dodopayments::InvoiceListParams::CollectionMethod::OrSymbol,
          created_at_gte: Time,
          created_at_lte: Time,
          customer_id: String,
          due_at_gte: Time,
          due_at_lte: Time,
          page_number: Integer,
          page_size: Integer,
          status: T::Array[Dodopayments::InvoiceListParams::Status::OrSymbol],
          subscription_id: String,
          tags: T::Array[Dodopayments::InvoiceListParams::Tag::OrSymbol],
          total_amount_gte: Integer,
          total_amount_lte: Integer,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        collection_method: nil,
        created_at_gte: nil,
        created_at_lte: nil,
        customer_id: nil,
        due_at_gte: nil,
        due_at_lte: nil,
        # Page number. The default is 0.
        page_number: nil,
        # Page size. The default is 10 and the maximum is 100.
        page_size: nil,
        # Repeat the key to match more than one status, for example
        # `status=open&status=past_due`.
        status: nil,
        subscription_id: nil,
        # Repeat the key to match an invoice that has any one of the tags.
        tags: nil,
        total_amount_gte: nil,
        total_amount_lte: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            collection_method:
              Dodopayments::InvoiceListParams::CollectionMethod::OrSymbol,
            created_at_gte: Time,
            created_at_lte: Time,
            customer_id: String,
            due_at_gte: Time,
            due_at_lte: Time,
            page_number: Integer,
            page_size: Integer,
            status: T::Array[Dodopayments::InvoiceListParams::Status::OrSymbol],
            subscription_id: String,
            tags: T::Array[Dodopayments::InvoiceListParams::Tag::OrSymbol],
            total_amount_gte: Integer,
            total_amount_lte: Integer,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      module CollectionMethod
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::InvoiceListParams::CollectionMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTO_CHARGE =
          T.let(
            :auto_charge,
            Dodopayments::InvoiceListParams::CollectionMethod::TaggedSymbol
          )
        MANUAL =
          T.let(
            :manual,
            Dodopayments::InvoiceListParams::CollectionMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::InvoiceListParams::CollectionMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The `message` of each variant is the label of the invoice document.
      module Status
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::InvoiceListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OPEN =
          T.let(:open, Dodopayments::InvoiceListParams::Status::TaggedSymbol)
        PAID =
          T.let(:paid, Dodopayments::InvoiceListParams::Status::TaggedSymbol)
        VOID =
          T.let(:void, Dodopayments::InvoiceListParams::Status::TaggedSymbol)
        DRAFT =
          T.let(:draft, Dodopayments::InvoiceListParams::Status::TaggedSymbol)
        PAST_DUE =
          T.let(
            :past_due,
            Dodopayments::InvoiceListParams::Status::TaggedSymbol
          )
        UNCOLLECTABLE =
          T.let(
            :uncollectable,
            Dodopayments::InvoiceListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Dodopayments::InvoiceListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Tag
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dodopayments::InvoiceListParams::Tag) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REFUNDED =
          T.let(:refunded, Dodopayments::InvoiceListParams::Tag::TaggedSymbol)
        PARTIALLY_REFUNDED =
          T.let(
            :partially_refunded,
            Dodopayments::InvoiceListParams::Tag::TaggedSymbol
          )
        DISPUTED =
          T.let(:disputed, Dodopayments::InvoiceListParams::Tag::TaggedSymbol)
        PAYMENT_REVERSED =
          T.let(
            :payment_reversed,
            Dodopayments::InvoiceListParams::Tag::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Dodopayments::InvoiceListParams::Tag::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
