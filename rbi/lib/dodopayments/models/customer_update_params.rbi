# typed: strong

module Dodopayments
  module Models
    class CustomerUpdateParams < Dodopayments::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      sig { returns(T.nilable(String)) }
      def phone_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def phone_number=(_)
      end

      sig do
        params(
          name: T.nilable(String),
          phone_number: T.nilable(String),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(name: nil, phone_number: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              name: T.nilable(String),
              phone_number: T.nilable(String),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
