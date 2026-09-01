# frozen_string_literal: true

module Dodopayments
  module Models
    module Blocklist
      class BlockByEmail < Dodopayments::Internal::Type::BaseModel
        # @!attribute email
        #   Email to block. It must belong to an existing customer of this business.
        #
        #   @return [String]
        required :email, String

        # @!method initialize(email:)
        #   @param email [String] Email to block. It must belong to an existing customer of this business.
      end
    end
  end
end
