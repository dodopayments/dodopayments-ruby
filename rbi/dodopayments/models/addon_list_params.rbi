# typed: strong

module Dodopayments
  module Models
    class AddonListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, Dodopayments::Internal::AnyHash) }

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
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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
            page_number: T.nilable(Integer),
            page_size: T.nilable(Integer),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
