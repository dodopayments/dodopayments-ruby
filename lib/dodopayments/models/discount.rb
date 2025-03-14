# frozen_string_literal: true

module Dodopayments
  module Models
    class Discount < Dodopayments::BaseModel
      # @!attribute amount
      #   The discount amount.
      #
      #     - If `discount_type` is `percentage`, this is in **basis points** (e.g., 540 =>
      #       5.4%).
      #     - Otherwise, this is **USD cents** (e.g., 100 => `$1.00`).
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
      required :restricted_to, Dodopayments::ArrayOf[String]

      # @!attribute times_used
      #   How many times this discount has been used.
      #
      #   @return [Integer]
      required :times_used, Integer

      # @!attribute type
      #
      #   @return [Symbol, Dodopayments::Models::DiscountType]
      required :type, enum: -> { Dodopayments::Models::DiscountType }

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

      # @!parse
      #   # @param amount [Integer]
      #   # @param business_id [String]
      #   # @param code [String]
      #   # @param created_at [Time]
      #   # @param discount_id [String]
      #   # @param restricted_to [Array<String>]
      #   # @param times_used [Integer]
      #   # @param type [Symbol, Dodopayments::Models::DiscountType]
      #   # @param expires_at [Time, nil]
      #   # @param name [String, nil]
      #   # @param usage_limit [Integer, nil]
      #   #
      #   def initialize(
      #     amount:,
      #     business_id:,
      #     code:,
      #     created_at:,
      #     discount_id:,
      #     restricted_to:,
      #     times_used:,
      #     type:,
      #     expires_at: nil,
      #     name: nil,
      #     usage_limit: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Dodopayments::BaseModel) -> void
    end
  end
end
