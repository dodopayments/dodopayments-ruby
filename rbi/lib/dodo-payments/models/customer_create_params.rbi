# typed: strong

module DodoPayments
  module Models
    class CustomerCreateParams < DodoPayments::BaseModel
      extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

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
          request_options: T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything])
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
              request_options: DodoPayments::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
