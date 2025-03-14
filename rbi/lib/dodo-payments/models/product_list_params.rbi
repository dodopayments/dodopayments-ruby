# typed: strong

module DodoPayments
  module Models
    class ProductListParams < DodoPayments::BaseModel
      extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      # List archived products
      sig { returns(T.nilable(T::Boolean)) }
      def archived
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def archived=(_)
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

      # Filter products by pricing type:
      #
      #   - `true`: Show only recurring pricing products (e.g. subscriptions)
      #   - `false`: Show only one-time price products
      #   - `null` or absent: Show both types of products
      sig { returns(T.nilable(T::Boolean)) }
      def recurring
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def recurring=(_)
      end

      sig do
        params(
          archived: T::Boolean,
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          recurring: T.nilable(T::Boolean),
          request_options: T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(archived: nil, page_number: nil, page_size: nil, recurring: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              archived: T::Boolean,
              page_number: T.nilable(Integer),
              page_size: T.nilable(Integer),
              recurring: T.nilable(T::Boolean),
              request_options: DodoPayments::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
