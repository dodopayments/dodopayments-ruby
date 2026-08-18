# typed: strong

module Dodopayments
  module Models
    class BrandArchiveParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::BrandArchiveParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Brand that takes over the products and the live subscriptions of the brand you
      # archive. It must be a brand of the same business, and it must not be archived.
      # The primary brand (its brand id is the business id) is a valid target. Omit this
      # field only when the brand holds no products and no live subscriptions.
      sig { returns(T.nilable(String)) }
      attr_accessor :move_products_to

      sig do
        params(
          id: String,
          move_products_to: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Brand that takes over the products and the live subscriptions of the brand you
        # archive. It must be a brand of the same business, and it must not be archived.
        # The primary brand (its brand id is the business id) is a valid target. Omit this
        # field only when the brand holds no products and no live subscriptions.
        move_products_to: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            move_products_to: T.nilable(String),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
