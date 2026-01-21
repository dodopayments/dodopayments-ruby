# typed: strong

module Dodopayments
  module Models
    class CustomerListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CustomerListParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # Filter customers created on or after this timestamp
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_gte

      sig { params(created_at_gte: Time).void }
      attr_writer :created_at_gte

      # Filter customers created on or before this timestamp
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_lte

      sig { params(created_at_lte: Time).void }
      attr_writer :created_at_lte

      # Filter by customer email
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Filter by customer name (partial match, case-insensitive)
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

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

      sig do
        params(
          created_at_gte: Time,
          created_at_lte: Time,
          email: String,
          name: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter customers created on or after this timestamp
        created_at_gte: nil,
        # Filter customers created on or before this timestamp
        created_at_lte: nil,
        # Filter by customer email
        email: nil,
        # Filter by customer name (partial match, case-insensitive)
        name: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            created_at_gte: Time,
            created_at_lte: Time,
            email: String,
            name: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
