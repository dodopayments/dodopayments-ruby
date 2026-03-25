# typed: strong

module Dodopayments
  module Models
    class ProductCollectionUnarchiveResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::ProductCollectionUnarchiveResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # Collection ID that was unarchived
      sig { returns(String) }
      attr_accessor :collection_id

      # Product IDs that were excluded because they are archived
      sig { returns(T::Array[String]) }
      attr_accessor :excluded_product_ids

      # Success message
      sig { returns(String) }
      attr_accessor :message

      sig do
        params(
          collection_id: String,
          excluded_product_ids: T::Array[String],
          message: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Collection ID that was unarchived
        collection_id:,
        # Product IDs that were excluded because they are archived
        excluded_product_ids:,
        # Success message
        message:
      )
      end

      sig do
        override.returns(
          {
            collection_id: String,
            excluded_product_ids: T::Array[String],
            message: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
