# frozen_string_literal: true

module Dodopayments
  module Models
    class CustomerPortalSession < Dodopayments::Internal::Type::BaseModel
      # @!attribute link
      #
      #   @return [String]
      required :link, String

      # @!parse
      #   # @param link [String]
      #   #
      #   def initialize(link:, **) = super

      # def initialize: (Hash | Dodopayments::Internal::Type::BaseModel) -> void
    end
  end
end
