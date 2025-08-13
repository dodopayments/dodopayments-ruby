# typed: strong

module Dodopayments
  module Models
    class ProductUpdateFilesResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::ProductUpdateFilesResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :file_id

      sig { returns(String) }
      attr_accessor :url

      sig { params(file_id: String, url: String).returns(T.attached_class) }
      def self.new(file_id:, url:)
      end

      sig { override.returns({ file_id: String, url: String }) }
      def to_hash
      end
    end
  end
end
