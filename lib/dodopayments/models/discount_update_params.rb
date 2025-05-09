# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Discounts#update
    class DiscountUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute amount
      #   If present, update the discount amount:
      #
      #   - If `discount_type` is `percentage`, this represents **basis points** (e.g.,
      #     `540` = `5.4%`).
      #   - Otherwise, this represents **USD cents** (e.g., `100` = `$1.00`).
      #
      #   Must be at least 1 if provided.
      #
      #   @return [Integer, nil]
      optional :amount, Integer, nil?: true

      # @!attribute code
      #   If present, update the discount code (uppercase).
      #
      #   @return [String, nil]
      optional :code, String, nil?: true

      # @!attribute expires_at
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute restricted_to
      #   If present, replaces all restricted product IDs with this new set. To remove all
      #   restrictions, send empty array
      #
      #   @return [Array<String>, nil]
      optional :restricted_to, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute type
      #
      #   @return [Symbol, Dodopayments::DiscountType, nil]
      optional :type, enum: -> { Dodopayments::DiscountType }, nil?: true

      # @!attribute usage_limit
      #
      #   @return [Integer, nil]
      optional :usage_limit, Integer, nil?: true

      # @!method initialize(amount: nil, code: nil, expires_at: nil, name: nil, restricted_to: nil, type: nil, usage_limit: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::DiscountUpdateParams} for more details.
      #
      #   @param amount [Integer, nil] If present, update the discount amount:
      #
      #   @param code [String, nil] If present, update the discount code (uppercase).
      #
      #   @param expires_at [Time, nil]
      #
      #   @param name [String, nil]
      #
      #   @param restricted_to [Array<String>, nil] If present, replaces all restricted product IDs with this new set.
      #
      #   @param type [Symbol, Dodopayments::DiscountType, nil]
      #
      #   @param usage_limit [Integer, nil]
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
