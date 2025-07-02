# typed: strong

module Dodopayments
  module Models
    class DiscountUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::DiscountUpdateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # If present, update the discount amount:
      #
      # - If `discount_type` is `percentage`, this represents **basis points** (e.g.,
      #   `540` = `5.4%`).
      # - Otherwise, this represents **USD cents** (e.g., `100` = `$1.00`).
      #
      # Must be at least 1 if provided.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount

      # If present, update the discount code (uppercase).
      sig { returns(T.nilable(String)) }
      attr_accessor :code

      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # If present, replaces all restricted product IDs with this new set. To remove all
      # restrictions, send empty array
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :restricted_to

      # If present, update the discount type.
      sig { returns(T.nilable(Dodopayments::DiscountType::OrSymbol)) }
      attr_accessor :type

      sig { returns(T.nilable(Integer)) }
      attr_accessor :usage_limit

      sig do
        params(
          amount: T.nilable(Integer),
          code: T.nilable(String),
          expires_at: T.nilable(Time),
          name: T.nilable(String),
          restricted_to: T.nilable(T::Array[String]),
          type: T.nilable(Dodopayments::DiscountType::OrSymbol),
          usage_limit: T.nilable(Integer),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # If present, update the discount amount:
        #
        # - If `discount_type` is `percentage`, this represents **basis points** (e.g.,
        #   `540` = `5.4%`).
        # - Otherwise, this represents **USD cents** (e.g., `100` = `$1.00`).
        #
        # Must be at least 1 if provided.
        amount: nil,
        # If present, update the discount code (uppercase).
        code: nil,
        expires_at: nil,
        name: nil,
        # If present, replaces all restricted product IDs with this new set. To remove all
        # restrictions, send empty array
        restricted_to: nil,
        # If present, update the discount type.
        type: nil,
        usage_limit: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: T.nilable(Integer),
            code: T.nilable(String),
            expires_at: T.nilable(Time),
            name: T.nilable(String),
            restricted_to: T.nilable(T::Array[String]),
            type: T.nilable(Dodopayments::DiscountType::OrSymbol),
            usage_limit: T.nilable(Integer),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
