# typed: strong

module Dodopayments
  module Models
    class AddonUpdateImagesResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::AddonUpdateImagesResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :image_id

      sig { returns(String) }
      attr_accessor :url

      sig { params(image_id: String, url: String).returns(T.attached_class) }
      def self.new(image_id:, url:)
      end

      sig { override.returns({ image_id: String, url: String }) }
      def to_hash
      end
    end
  end
end
