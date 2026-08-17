# typed: strong

module Dodopayments
  module Models
    class BrandListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Dodopayments::BrandListParams, Dodopayments::Internal::AnyHash)
        end

      # Set to true to also list archived brands. Default false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_archived

      sig { params(include_archived: T::Boolean).void }
      attr_writer :include_archived

      sig do
        params(
          include_archived: T::Boolean,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Set to true to also list archived brands. Default false.
        include_archived: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            include_archived: T::Boolean,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
