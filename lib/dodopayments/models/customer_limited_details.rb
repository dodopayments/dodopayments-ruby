# frozen_string_literal: true

module Dodopayments
  module Models
    class CustomerLimitedDetails < Dodopayments::BaseModel
      # @!attribute customer_id
      #   Unique identifier for the customer
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute email
      #   Email address of the customer
      #
      #   @return [String]
      required :email, String

      # @!attribute name
      #   Full name of the customer
      #
      #   @return [String]
      required :name, String

      # @!parse
      #   # @param customer_id [String]
      #   # @param email [String]
      #   # @param name [String]
      #   #
      #   def initialize(customer_id:, email:, name:, **) = super

      # def initialize: (Hash | Dodopayments::BaseModel) -> void
    end
  end
end
