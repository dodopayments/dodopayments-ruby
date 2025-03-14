# frozen_string_literal: true

module DodoPayments
  module Models
    class DiscountUpdateParams < DodoPayments::BaseModel
      # @!parse
      #   extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      # @!attribute amount
      #   If present, update the discount amount:
      #
      #     - If `discount_type` is `percentage`, this represents **basis points** (e.g.,
      #       `540` = `5.4%`).
      #     - Otherwise, this represents **USD cents** (e.g., `100` = `$1.00`).
      #
      #     Must be at least 1 if provided.
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
      #     restrictions, send empty array
      #
      #   @return [Array<String>, nil]
      optional :restricted_to, DodoPayments::ArrayOf[String], nil?: true

      # @!attribute type
      #
      #   @return [Symbol, DodoPayments::Models::DiscountUpdateParams::Type, nil]
      optional :type, enum: -> { DodoPayments::Models::DiscountUpdateParams::Type }, nil?: true

      # @!attribute usage_limit
      #
      #   @return [Integer, nil]
      optional :usage_limit, Integer, nil?: true

      # @!parse
      #   # @param amount [Integer, nil]
      #   # @param code [String, nil]
      #   # @param expires_at [Time, nil]
      #   # @param name [String, nil]
      #   # @param restricted_to [Array<String>, nil]
      #   # @param type [Symbol, DodoPayments::Models::DiscountUpdateParams::Type, nil]
      #   # @param usage_limit [Integer, nil]
      #   # @param request_options [DodoPayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     amount: nil,
      #     code: nil,
      #     expires_at: nil,
      #     name: nil,
      #     restricted_to: nil,
      #     type: nil,
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
