# typed: strong

module Dodopayments
  module Models
    module Products
      class ImageUpdateResponse < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::Products::ImageUpdateResponse,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :url

        sig { returns(T.nilable(String)) }
        attr_accessor :image_id

        sig do
          params(url: String, image_id: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(url:, image_id: nil)
        end

        sig { override.returns({ url: String, image_id: T.nilable(String) }) }
        def to_hash
        end
      end
    end
  end
end
