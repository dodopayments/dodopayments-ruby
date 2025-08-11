# typed: strong

module Dodopayments
  module Resources
    class Discounts
      # POST /discounts If `code` is omitted or empty, a random 16-char uppercase code
      # is generated.
      sig do
        params(
          amount: Integer,
          type: Dodopayments::DiscountType::OrSymbol,
          code: T.nilable(String),
          expires_at: T.nilable(Time),
          name: T.nilable(String),
          restricted_to: T.nilable(T::Array[String]),
          subscription_cycles: T.nilable(Integer),
          usage_limit: T.nilable(Integer),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Discount)
      end
      def create(
        # The discount amount.
        #
        # - If `discount_type` is **not** `percentage`, `amount` is in **USD cents**. For
        #   example, `100` means `$1.00`. Only USD is allowed.
        # - If `discount_type` **is** `percentage`, `amount` is in **basis points**. For
        #   example, `540` means `5.4%`.
        #
        # Must be at least 1.
        amount:,
        # The discount type (e.g. `percentage`, `flat`, or `flat_per_unit`).
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
        # Number of subscription billing cycles this discount is valid for. If not
        # provided, the discount will be applied indefinitely to all recurring payments
        # related to the subscription.
        subscription_cycles: nil,
        # How many times this discount can be used (if any). Must be >= 1 if provided.
        usage_limit: nil,
        request_options: {}
      )
      end

      # GET /discounts/{discount_id}
      sig do
        params(
          discount_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Discount)
      end
      def retrieve(
        # Discount Id
        discount_id,
        request_options: {}
      )
      end

      # PATCH /discounts/{discount_id}
      sig do
        params(
          discount_id: String,
          amount: T.nilable(Integer),
          code: T.nilable(String),
          expires_at: T.nilable(Time),
          name: T.nilable(String),
          restricted_to: T.nilable(T::Array[String]),
          subscription_cycles: T.nilable(Integer),
          type: T.nilable(Dodopayments::DiscountType::OrSymbol),
          usage_limit: T.nilable(Integer),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Discount)
      end
      def update(
        # Discount Id
        discount_id,
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
        # Number of subscription billing cycles this discount is valid for. If not
        # provided, the discount will be applied indefinitely to all recurring payments
        # related to the subscription.
        subscription_cycles: nil,
        # If present, update the discount type.
        type: nil,
        usage_limit: nil,
        request_options: {}
      )
      end

      # GET /discounts
      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(
          Dodopayments::Internal::DefaultPageNumberPagination[
            Dodopayments::Discount
          ]
        )
      end
      def list(
        # Page number (default = 0).
        page_number: nil,
        # Page size (default = 10, max = 100).
        page_size: nil,
        request_options: {}
      )
      end

      # DELETE /discounts/{discount_id}
      sig do
        params(
          discount_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Discount Id
        discount_id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
