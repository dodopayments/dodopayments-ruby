# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Discounts#create
    class DiscountCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute amount
      #   The discount amount.
      #
      #   - If `discount_type` is **not** `percentage`, `amount` is in **USD cents**. For
      #     example, `100` means `$1.00`. Only USD is allowed.
      #   - If `discount_type` **is** `percentage`, `amount` is in **basis points**. For
      #     example, `540` means `5.4%`.
      #
      #   Must be at least 1.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute type
      #
      #   @return [Symbol, Dodopayments::Models::DiscountType]
      required :type, enum: -> { Dodopayments::DiscountType }

      # @!attribute code
      #   Optionally supply a code (will be uppercased).
      #
      #   - Must be at least 3 characters if provided.
      #   - If omitted, a random 16-character code is generated.
      #
      #   @return [String, nil]
      optional :code, String, nil?: true

      # @!attribute expires_at
      #   When the discount expires, if ever.
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute restricted_to
      #   List of product IDs to restrict usage (if any).
      #
      #   @return [Array<String>, nil]
      optional :restricted_to, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute usage_limit
      #   How many times this discount can be used (if any). Must be >= 1 if provided.
      #
      #   @return [Integer, nil]
      optional :usage_limit, Integer, nil?: true

      # @!method initialize(amount:, type:, code: nil, expires_at: nil, name: nil, restricted_to: nil, usage_limit: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::DiscountCreateParams} for more details.
      #
      #   @param amount [Integer] The discount amount.
      #
      #   @param type [Symbol, Dodopayments::Models::DiscountType]
      #
      #   @param code [String, nil] Optionally supply a code (will be uppercased).
      #
      #   @param expires_at [Time, nil] When the discount expires, if ever.
      #
      #   @param name [String, nil]
      #
      #   @param restricted_to [Array<String>, nil] List of product IDs to restrict usage (if any).
      #
      #   @param usage_limit [Integer, nil] How many times this discount can be used (if any).
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
