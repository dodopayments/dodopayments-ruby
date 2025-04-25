# typed: strong

module Dodopayments
  module Models
    class PayoutListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # Page number default is 0
      sig { returns(T.nilable(Integer)) }
      attr_accessor :page_number

      # Page size default is 10 max is 100
      sig { returns(T.nilable(Integer)) }
      attr_accessor :page_size

      sig do
        params(
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              page_number: T.nilable(Integer),
              page_size: T.nilable(Integer),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
