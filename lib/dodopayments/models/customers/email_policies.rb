# frozen_string_literal: true

module Dodopayments
  module Models
    module Customers
      class EmailPolicies < Dodopayments::Internal::Type::BaseModel
        # @!attribute requires_different_address
        #   A permanent failure was recorded, so the same address would be a no-op.
        #
        #   @return [Boolean]
        required :requires_different_address, Dodopayments::Internal::Type::Boolean

        # @!attribute resend_allowed
        #   The row was delivered and may be sent again.
        #
        #   @return [Boolean]
        required :resend_allowed, Dodopayments::Internal::Type::Boolean

        # @!attribute resends_remaining
        #   How many sends are left in this email's chain.
        #
        #   @return [Integer]
        required :resends_remaining, Integer

        # @!attribute retry_allowed
        #   The row failed and may be sent again.
        #
        #   @return [Boolean]
        required :retry_allowed, Dodopayments::Internal::Type::Boolean

        # @!method initialize(requires_different_address:, resend_allowed:, resends_remaining:, retry_allowed:)
        #   What the merchant may do with one row. The server decides; the client never
        #   derives eligibility itself.
        #
        #   @param requires_different_address [Boolean] A permanent failure was recorded, so the same address would be a no-op.
        #
        #   @param resend_allowed [Boolean] The row was delivered and may be sent again.
        #
        #   @param resends_remaining [Integer] How many sends are left in this email's chain.
        #
        #   @param retry_allowed [Boolean] The row failed and may be sent again.
      end
    end
  end
end
