# typed: strong

module Dodopayments
  module Models
    module Products
      class ShortLinkCreateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Products::ShortLinkCreateParams,
              Dodopayments::Internal::AnyHash
            )
          end

        # Slug for the short link.
        sig { returns(String) }
        attr_accessor :slug

        # Static Checkout URL parameters to apply to the resulting short URL.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_accessor :static_checkout_params

        sig do
          params(
            slug: String,
            static_checkout_params: T.nilable(T::Hash[Symbol, String]),
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Slug for the short link.
          slug:,
          # Static Checkout URL parameters to apply to the resulting short URL.
          static_checkout_params: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              slug: String,
              static_checkout_params: T.nilable(T::Hash[Symbol, String]),
              request_options: Dodopayments::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
