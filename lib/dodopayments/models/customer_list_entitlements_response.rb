# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Customers#list_entitlements
    class CustomerListEntitlementsResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute items
      #
      #   @return [Array<Dodopayments::Models::CustomerListEntitlementsResponse::Item>]
      required :items,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::CustomerListEntitlementsResponse::Item] }

      # @!method initialize(items:)
      #   @param items [Array<Dodopayments::Models::CustomerListEntitlementsResponse::Item>]

      class Item < Dodopayments::Internal::Type::BaseModel
        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute entitlement_id
        #   The entitlement this grant belongs to.
        #
        #   @return [String]
        required :entitlement_id, String

        # @!attribute entitlement_name
        #
        #   @return [String]
        required :entitlement_name, String

        # @!attribute grant_id
        #   Grant id (the per-customer row in `entitlement_grants`).
        #
        #   @return [String]
        required :grant_id, String

        # @!attribute integration_type
        #
        #   @return [Symbol, Dodopayments::Models::EntitlementIntegrationType]
        required :integration_type, enum: -> { Dodopayments::EntitlementIntegrationType }

        # @!attribute status
        #
        #   @return [Symbol, Dodopayments::Models::CustomerListEntitlementsResponse::Item::Status]
        required :status, enum: -> { Dodopayments::Models::CustomerListEntitlementsResponse::Item::Status }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute delivered_at
        #
        #   @return [Time, nil]
        optional :delivered_at, Time, nil?: true

        # @!attribute entitlement_description
        #
        #   @return [String, nil]
        optional :entitlement_description, String, nil?: true

        # @!attribute revoked_at
        #
        #   @return [Time, nil]
        optional :revoked_at, Time, nil?: true

        # @!method initialize(created_at:, entitlement_id:, entitlement_name:, grant_id:, integration_type:, status:, updated_at:, delivered_at: nil, entitlement_description: nil, revoked_at: nil)
        #   @param created_at [Time]
        #
        #   @param entitlement_id [String] The entitlement this grant belongs to.
        #
        #   @param entitlement_name [String]
        #
        #   @param grant_id [String] Grant id (the per-customer row in `entitlement_grants`).
        #
        #   @param integration_type [Symbol, Dodopayments::Models::EntitlementIntegrationType]
        #
        #   @param status [Symbol, Dodopayments::Models::CustomerListEntitlementsResponse::Item::Status]
        #
        #   @param updated_at [Time]
        #
        #   @param delivered_at [Time, nil]
        #
        #   @param entitlement_description [String, nil]
        #
        #   @param revoked_at [Time, nil]

        # @see Dodopayments::Models::CustomerListEntitlementsResponse::Item#status
        module Status
          extend Dodopayments::Internal::Type::Enum

          PENDING = :pending
          DELIVERED = :delivered
          FAILED = :failed
          REVOKED = :revoked

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
