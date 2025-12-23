# typed: strong

module Dodopayments
  module Models
    module Products
      class ShortLinkListResponse < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::Products::ShortLinkListResponse,
              Dodopayments::Internal::AnyHash
            )
          end

        # When the short url was created
        sig { returns(Time) }
        attr_accessor :created_at

        # Full URL the short url redirects to
        sig { returns(String) }
        attr_accessor :full_url

        # Product ID associated with the short link
        sig { returns(String) }
        attr_accessor :product_id

        # Short URL
        sig { returns(String) }
        attr_accessor :short_url

        sig do
          params(
            created_at: Time,
            full_url: String,
            product_id: String,
            short_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # When the short url was created
          created_at:,
          # Full URL the short url redirects to
          full_url:,
          # Product ID associated with the short link
          product_id:,
          # Short URL
          short_url:
        )
        end

        sig do
          override.returns(
            {
              created_at: Time,
              full_url: String,
              product_id: String,
              short_url: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
