# typed: strong

module Dodopayments
  module Models
    class RefundCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::RefundCreateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # The unique identifier of the payment to be refunded.
      sig { returns(String) }
      attr_accessor :payment_id

      # Partially Refund an Individual Item
      sig do
        returns(T.nilable(T::Array[Dodopayments::RefundCreateParams::Item]))
      end
      attr_accessor :items

      # Additional metadata associated with the refund.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # The reason for the refund, if any. Maximum length is 3000 characters. Optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig do
        params(
          payment_id: String,
          items:
            T.nilable(T::Array[Dodopayments::RefundCreateParams::Item::OrHash]),
          metadata: T::Hash[Symbol, String],
          reason: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the payment to be refunded.
        payment_id:,
        # Partially Refund an Individual Item
        items: nil,
        # Additional metadata associated with the refund.
        metadata: nil,
        # The reason for the refund, if any. Maximum length is 3000 characters. Optional.
        reason: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            payment_id: String,
            items: T.nilable(T::Array[Dodopayments::RefundCreateParams::Item]),
            metadata: T::Hash[Symbol, String],
            reason: T.nilable(String),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Item < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::RefundCreateParams::Item,
              Dodopayments::Internal::AnyHash
            )
          end

        # The id of the item (i.e. `product_id` or `addon_id`)
        sig { returns(String) }
        attr_accessor :item_id

        # The amount to refund. if None the whole item is refunded
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount

        # Specify if tax is inclusive of the refund. Default true.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :tax_inclusive

        sig { params(tax_inclusive: T::Boolean).void }
        attr_writer :tax_inclusive

        sig do
          params(
            item_id: String,
            amount: T.nilable(Integer),
            tax_inclusive: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The id of the item (i.e. `product_id` or `addon_id`)
          item_id:,
          # The amount to refund. if None the whole item is refunded
          amount: nil,
          # Specify if tax is inclusive of the refund. Default true.
          tax_inclusive: nil
        )
        end

        sig do
          override.returns(
            {
              item_id: String,
              amount: T.nilable(Integer),
              tax_inclusive: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
