# frozen_string_literal: true

module Dodopayments
  module Models
    class CustomerPortalSession < Dodopayments::Internal::Type::BaseModel
      # @!attribute link
      #
      #   @return [String]
      required :link, String

      # @!method initialize(link:)
      #   @param link [String]
    end
  end
end
