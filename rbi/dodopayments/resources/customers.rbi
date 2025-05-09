# typed: strong

module Dodopayments
  module Resources
    class Customers
      sig { returns(Dodopayments::Resources::Customers::CustomerPortal) }
      attr_reader :customer_portal

      sig do
        params(
          email: String,
          name: String,
          phone_number: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Customer)
      end
      def create(email:, name:, phone_number: nil, request_options: {})
      end

      sig do
        params(
          customer_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Customer)
      end
      def retrieve(
        # Customer Id
        customer_id,
        request_options: {}
      )
      end

      sig do
        params(
          customer_id: String,
          name: T.nilable(String),
          phone_number: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Customer)
      end
      def update(
        # Customer Id
        customer_id,
        name: nil,
        phone_number: nil,
        request_options: {}
      )
      end

      sig do
        params(
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(
          Dodopayments::Internal::DefaultPageNumberPagination[
            Dodopayments::Customer
          ]
        )
      end
      def list(
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
