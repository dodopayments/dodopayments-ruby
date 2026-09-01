# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Customers#create
    class Customer < Dodopayments::Internal::Type::BaseModel
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

      # @!attribute blocked_at
      #   When the merchant blocked this customer. The dashboard shows the "Blocked" badge
      #   and the unblock action from it. The list route leaves it empty; only the
      #   single-customer route resolves it.
      #
      #   @return [Time, nil]
      optional :blocked_at, Time, nil?: true

      # @!attribute blocklist_entry_id
      #   Blocklist entry behind `blocked_at`, so the dashboard can link to it.
      #
      #   @return [String, nil]
      optional :blocklist_entry_id, String, nil?: true

      # @!attribute metadata
      #   Additional metadata for the customer
      #
      #   @return [Hash{Symbol=>String, Float, Boolean}, nil]
      optional :metadata, -> { Dodopayments::Internal::Type::HashOf[union: Dodopayments::MetadataItem] }

      # @!attribute phone_number
      #
      #   @return [String, nil]
      optional :phone_number, String, nil?: true

      # @!method initialize(business_id:, created_at:, customer_id:, email:, name:, blocked_at: nil, blocklist_entry_id: nil, metadata: nil, phone_number: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::Customer} for more details.
      #
      #   @param business_id [String]
      #
      #   @param created_at [Time]
      #
      #   @param customer_id [String]
      #
      #   @param email [String]
      #
      #   @param name [String]
      #
      #   @param blocked_at [Time, nil] When the merchant blocked this customer. The dashboard shows the
      #
      #   @param blocklist_entry_id [String, nil] Blocklist entry behind `blocked_at`, so the dashboard can link to it.
      #
      #   @param metadata [Hash{Symbol=>String, Float, Boolean}] Additional metadata for the customer
      #
      #   @param phone_number [String, nil]
    end
  end
end
