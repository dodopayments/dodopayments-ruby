# typed: strong

module Dodopayments
  module Models
    class DiscountCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::DiscountCreateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # The discount amount.
      #
      # - If `discount_type` is **not** `percentage`, `amount` is in **USD cents**. For
      #   example, `100` means `$1.00`. Only USD is allowed.
      # - If `discount_type` **is** `percentage`, `amount` is in **basis points**. For
      #   example, `540` means `5.4%`.
      #
      # Must be at least 1.
      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(Dodopayments::DiscountType::OrSymbol) }
      attr_accessor :type

      # Optionally supply a code (will be uppercased).
      #
      # - Must be at least 3 characters if provided.
      # - If omitted, a random 16-character code is generated.
      sig { returns(T.nilable(String)) }
      attr_accessor :code

      # When the discount expires, if ever.
      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # List of product IDs to restrict usage (if any).
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :restricted_to

      # How many times this discount can be used (if any). Must be >= 1 if provided.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :usage_limit

      sig do
        params(
          amount: Integer,
          type: Dodopayments::DiscountType::OrSymbol,
          code: T.nilable(String),
          expires_at: T.nilable(Time),
          name: T.nilable(String),
          restricted_to: T.nilable(T::Array[String]),
          usage_limit: T.nilable(Integer),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The discount amount.
        #
        # - If `discount_type` is **not** `percentage`, `amount` is in **USD cents**. For
        #   example, `100` means `$1.00`. Only USD is allowed.
        # - If `discount_type` **is** `percentage`, `amount` is in **basis points**. For
        #   example, `540` means `5.4%`.
        #
        # Must be at least 1.
        amount:,
        type:,
        # Optionally supply a code (will be uppercased).
        #
        # - Must be at least 3 characters if provided.
        # - If omitted, a random 16-character code is generated.
        code: nil,
        # When the discount expires, if ever.
        expires_at: nil,
        name: nil,
        # List of product IDs to restrict usage (if any).
        restricted_to: nil,
        # How many times this discount can be used (if any). Must be >= 1 if provided.
        usage_limit: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: Integer,
            type: Dodopayments::DiscountType::OrSymbol,
            code: T.nilable(String),
            expires_at: T.nilable(Time),
            name: T.nilable(String),
            restricted_to: T.nilable(T::Array[String]),
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
