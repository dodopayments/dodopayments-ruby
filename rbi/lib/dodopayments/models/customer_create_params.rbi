# typed: strong

module Dodopayments
  module Models
    class CustomerCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      sig { returns(String) }
      def email
      end

      sig { params(_: String).returns(String) }
      def email=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
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
          email: String,
          name: String,
          phone_number: T.nilable(String),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(email:, name:, phone_number: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              email: String,
              name: String,
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
