# typed: strong

module Dodopayments
  module Models
    class ProductCollectionUpdateImagesParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::ProductCollectionUpdateImagesParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # If true, generates a new image ID to force cache invalidation
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :force_update

      sig do
        params(
          id: String,
          force_update: T.nilable(T::Boolean),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # If true, generates a new image ID to force cache invalidation
        force_update: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            force_update: T.nilable(T::Boolean),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
