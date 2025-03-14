# frozen_string_literal: true

module DodoPayments
  module Models
    class CustomerPortalSession < DodoPayments::BaseModel
      # @!attribute link
      #
      #   @return [String]
      required :link, String

      # @!parse
      #   # @param link [String]
      #   #
      #   def initialize(link:, **) = super

      # def initialize: (Hash | DodoPayments::BaseModel) -> void
    end
  end
end
