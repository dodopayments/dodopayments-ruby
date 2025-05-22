# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Discounts#create
    class Discount < Dodopayments::Internal::Type::BaseModel
      # @!attribute amount
      #   The discount amount.
      #
      #   - If `discount_type` is `percentage`, this is in **basis points** (e.g., 540 =>
      #     5.4%).
      #   - Otherwise, this is **USD cents** (e.g., 100 => `$1.00`).
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute business_id
      #   The business this discount belongs to.
      #
      #   @return [String]
      required :business_id, String

      # @!attribute code
      #   The discount code (up to 16 chars).
      #
      #   @return [String]
      required :code, String

      # @!attribute created_at
      #   Timestamp when the discount is created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute discount_id
      #   The unique discount ID
      #
      #   @return [String]
      required :discount_id, String

      # @!attribute restricted_to
      #   List of product IDs to which this discount is restricted.
      #
      #   @return [Array<String>]
      required :restricted_to, Dodopayments::Internal::Type::ArrayOf[String]

      # @!attribute times_used
      #   How many times this discount has been used.
      #
      #   @return [Integer]
      required :times_used, Integer

      # @!attribute type
      #
      #   @return [Symbol, Dodopayments::Models::DiscountType]
      required :type, enum: -> { Dodopayments::DiscountType }

      # @!attribute expires_at
      #   Optional date/time after which discount is expired.
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!attribute name
      #   Name for the Discount
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute usage_limit
      #   Usage limit for this discount, if any.
      #
      #   @return [Integer, nil]
      optional :usage_limit, Integer, nil?: true

      # @!method initialize(amount:, business_id:, code:, created_at:, discount_id:, restricted_to:, times_used:, type:, expires_at: nil, name: nil, usage_limit: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::Discount} for more details.
      #
      #   @param amount [Integer] The discount amount.
      #
      #   @param business_id [String] The business this discount belongs to.
      #
      #   @param code [String] The discount code (up to 16 chars).
      #
      #   @param created_at [Time] Timestamp when the discount is created
      #
      #   @param discount_id [String] The unique discount ID
      #
      #   @param restricted_to [Array<String>] List of product IDs to which this discount is restricted.
      #
      #   @param times_used [Integer] How many times this discount has been used.
      #
      #   @param type [Symbol, Dodopayments::Models::DiscountType]
      #
      #   @param expires_at [Time, nil] Optional date/time after which discount is expired.
      #
      #   @param name [String, nil] Name for the Discount
      #
      #   @param usage_limit [Integer, nil] Usage limit for this discount, if any.
    end
  end
end
