# frozen_string_literal: true

module Dodopayments
  module Models
    class CustomerLimitedDetails < Dodopayments::Internal::Type::BaseModel
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

      # @!attribute metadata
      #   Additional metadata associated with the customer
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::Internal::Type::HashOf[String]

      # @!attribute phone_number
      #   Phone number of the customer
      #
      #   @return [String, nil]
      optional :phone_number, String, nil?: true

      # @!method initialize(customer_id:, email:, name:, metadata: nil, phone_number: nil)
      #   @param customer_id [String] Unique identifier for the customer
      #
      #   @param email [String] Email address of the customer
      #
      #   @param name [String] Full name of the customer
      #
      #   @param metadata [Hash{Symbol=>String}] Additional metadata associated with the customer
      #
      #   @param phone_number [String, nil] Phone number of the customer
    end
  end
end
