# typed: strong

module Dodopayments
  module Models
    class BrandCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::BrandCreateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor

      sig { returns(T.nilable(String)) }
      attr_accessor :support_email

      sig { returns(T.nilable(String)) }
      attr_accessor :url

      sig do
        params(
          description: T.nilable(String),
          name: T.nilable(String),
          statement_descriptor: T.nilable(String),
          support_email: T.nilable(String),
          url: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        description: nil,
        name: nil,
        statement_descriptor: nil,
        support_email: nil,
        url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            description: T.nilable(String),
            name: T.nilable(String),
            statement_descriptor: T.nilable(String),
            support_email: T.nilable(String),
            url: T.nilable(String),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
