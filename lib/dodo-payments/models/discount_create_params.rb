# frozen_string_literal: true

module DodoPayments
  module Models
    class DiscountCreateParams < DodoPayments::BaseModel
      # @!parse
      #   extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      # @!attribute amount
      #   The discount amount.
      #
      #     - If `discount_type` is **not** `percentage`, `amount` is in **USD cents**. For
      #       example, `100` means `$1.00`. Only USD is allowed.
      #     - If `discount_type` **is** `percentage`, `amount` is in **basis points**. For
      #       example, `540` means `5.4%`.
      #
      #     Must be at least 1.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute type
      #
      #   @return [Symbol, DodoPayments::Models::DiscountCreateParams::Type]
      required :type, enum: -> { DodoPayments::Models::DiscountCreateParams::Type }

      # @!attribute code
      #   Optionally supply a code (will be uppercased).
      #
      #     - Must be at least 3 characters if provided.
      #     - If omitted, a random 16-character code is generated.
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
      optional :restricted_to, DodoPayments::ArrayOf[String], nil?: true

      # @!attribute usage_limit
      #   How many times this discount can be used (if any). Must be >= 1 if provided.
      #
      #   @return [Integer, nil]
      optional :usage_limit, Integer, nil?: true

      # @!parse
      #   # @param amount [Integer]
      #   # @param type [Symbol, DodoPayments::Models::DiscountCreateParams::Type]
      #   # @param code [String, nil]
      #   # @param expires_at [Time, nil]
      #   # @param name [String, nil]
      #   # @param restricted_to [Array<String>, nil]
      #   # @param usage_limit [Integer, nil]
      #   # @param request_options [DodoPayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     amount:,
      #     type:,
      #     code: nil,
      #     expires_at: nil,
      #     name: nil,
      #     restricted_to: nil,
      #     usage_limit: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | DodoPayments::BaseModel) -> void

      # @abstract
      class Type < DodoPayments::Enum
        PERCENTAGE = :percentage

        finalize!
      end
    end
  end
end
