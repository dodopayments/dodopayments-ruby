# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Customers#create
    class Customer < Dodopayments::BaseModel
      # @!attribute business_id
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute phone_number
      #
      #   @return [String, nil]
      optional :phone_number, String, nil?: true

      # @!parse
      #   # @param business_id [String]
      #   # @param created_at [Time]
      #   # @param customer_id [String]
      #   # @param email [String]
      #   # @param name [String]
      #   # @param phone_number [String, nil]
      #   #
      #   def initialize(business_id:, created_at:, customer_id:, email:, name:, phone_number: nil, **) = super

      # def initialize: (Hash | Dodopayments::BaseModel) -> void
    end
  end
end
