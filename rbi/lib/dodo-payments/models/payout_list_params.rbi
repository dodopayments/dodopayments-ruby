# typed: strong

module DodoPayments
  module Models
    class PayoutListParams < DodoPayments::BaseModel
      extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

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

      sig do
        params(
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          request_options: T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(page_number: nil, page_size: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              page_number: T.nilable(Integer),
              page_size: T.nilable(Integer),
              request_options: DodoPayments::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
