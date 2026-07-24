# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Discounts#list
    class DiscountListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute active
      #   Filter by active status. `true` = currently redeemable (started, not expired,
      #   not usage-exhausted). `false` = not currently redeemable (expired,
      #   usage-exhausted, or pending a future `starts_at`).
      #
      #   @return [Boolean, nil]
      optional :active, Dodopayments::Internal::Type::Boolean

      # @!attribute code
      #   Filter by discount code (partial match, case-insensitive)
      #
      #   @return [String, nil]
      optional :code, String

      # @!attribute discount_type
      #   Filter by discount type
      #
      #   @return [Symbol, Dodopayments::Models::DiscountType, nil]
      optional :discount_type, enum: -> { Dodopayments::DiscountType }

      # @!attribute page_number
      #   Page number (default = 0).
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Page size (default = 10, max = 100).
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute product_id
      #   Filter by product restriction (only discounts that apply to this product)
      #
      #   @return [String, nil]
      optional :product_id, String

      # @!method initialize(active: nil, code: nil, discount_type: nil, page_number: nil, page_size: nil, product_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::DiscountListParams} for more details.
      #
      #   @param active [Boolean] Filter by active status. `true` = currently redeemable (started, not
      #
      #   @param code [String] Filter by discount code (partial match, case-insensitive)
      #
      #   @param discount_type [Symbol, Dodopayments::Models::DiscountType] Filter by discount type
      #
      #   @param page_number [Integer] Page number (default = 0).
      #
      #   @param page_size [Integer] Page size (default = 10, max = 100).
      #
      #   @param product_id [String] Filter by product restriction (only discounts that apply to this product)
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
