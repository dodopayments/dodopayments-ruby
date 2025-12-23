# typed: strong

module Dodopayments
  module Models
    module Products
      class ShortLinkCreateResponse < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::Products::ShortLinkCreateResponse,
              Dodopayments::Internal::AnyHash
            )
          end

        # Full URL.
        sig { returns(String) }
        attr_accessor :full_url

        # Short URL.
        sig { returns(String) }
        attr_accessor :short_url

        sig do
          params(full_url: String, short_url: String).returns(T.attached_class)
        end
        def self.new(
          # Full URL.
          full_url:,
          # Short URL.
          short_url:
        )
        end

        sig { override.returns({ full_url: String, short_url: String }) }
        def to_hash
        end
      end
    end
  end
end
