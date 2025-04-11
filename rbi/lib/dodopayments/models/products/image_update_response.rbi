# typed: strong

module Dodopayments
  module Models
    module Products
      class ImageUpdateResponse < Dodopayments::Internal::Type::BaseModel
        sig { returns(String) }
        def url
        end

        sig { params(_: String).returns(String) }
        def url=(_)
        end

        sig { returns(T.nilable(String)) }
        def image_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def image_id=(_)
        end

        sig { params(url: String, image_id: T.nilable(String)).returns(T.attached_class) }
        def self.new(url:, image_id: nil); end

        sig { override.returns({url: String, image_id: T.nilable(String)}) }
        def to_hash; end
      end
    end
  end
end
