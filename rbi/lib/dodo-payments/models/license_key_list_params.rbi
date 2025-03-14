# typed: strong

module DodoPayments
  module Models
    class LicenseKeyListParams < DodoPayments::BaseModel
      extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      # Filter by customer ID
      sig { returns(T.nilable(String)) }
      def customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def customer_id=(_)
      end

      # Page number default is 0
      sig { returns(T.nilable(Integer)) }
      def page_number
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def page_number=(_)
      end

      # Page size default is 10 max is 100
      sig { returns(T.nilable(Integer)) }
      def page_size
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def page_size=(_)
      end

      # Filter by product ID
      sig { returns(T.nilable(String)) }
      def product_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def product_id=(_)
      end

      # Filter by license key status
      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def status=(_)
      end

      sig do
        params(
          customer_id: T.nilable(String),
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          product_id: T.nilable(String),
          status: T.nilable(Symbol),
          request_options: T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(customer_id: nil, page_number: nil, page_size: nil, product_id: nil, status: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              customer_id: T.nilable(String),
              page_number: T.nilable(Integer),
              page_size: T.nilable(Integer),
              product_id: T.nilable(String),
              status: T.nilable(Symbol),
              request_options: DodoPayments::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Filter by license key status
      class Status < DodoPayments::Enum
        abstract!

        ACTIVE = T.let(:active, T.nilable(Symbol))
        EXPIRED = T.let(:expired, T.nilable(Symbol))
        DISABLED = T.let(:disabled, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
