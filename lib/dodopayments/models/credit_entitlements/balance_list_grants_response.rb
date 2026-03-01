# frozen_string_literal: true

module Dodopayments
  module Models
    module CreditEntitlements
      # @see Dodopayments::Resources::CreditEntitlements::Balances#list_grants
      class BalanceListGrantsResponse < Dodopayments::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_entitlement_id
        #
        #   @return [String]
        required :credit_entitlement_id, String

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute initial_amount
        #
        #   @return [String]
        required :initial_amount, String

        # @!attribute is_expired
        #
        #   @return [Boolean]
        required :is_expired, Dodopayments::Internal::Type::Boolean

        # @!attribute is_rolled_over
        #
        #   @return [Boolean]
        required :is_rolled_over, Dodopayments::Internal::Type::Boolean

        # @!attribute remaining_amount
        #
        #   @return [String]
        required :remaining_amount, String

        # @!attribute rollover_count
        #
        #   @return [Integer]
        required :rollover_count, Integer

        # @!attribute source_type
        #
        #   @return [Symbol, Dodopayments::Models::CreditEntitlements::BalanceListGrantsResponse::SourceType]
        required :source_type,
                 enum: -> { Dodopayments::Models::CreditEntitlements::BalanceListGrantsResponse::SourceType }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute expires_at
        #
        #   @return [Time, nil]
        optional :expires_at, Time, nil?: true

        # @!attribute metadata
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Dodopayments::Internal::Type::HashOf[String], nil?: true

        # @!attribute parent_grant_id
        #
        #   @return [String, nil]
        optional :parent_grant_id, String, nil?: true

        # @!attribute source_id
        #
        #   @return [String, nil]
        optional :source_id, String, nil?: true

        # @!method initialize(id:, created_at:, credit_entitlement_id:, customer_id:, initial_amount:, is_expired:, is_rolled_over:, remaining_amount:, rollover_count:, source_type:, updated_at:, expires_at: nil, metadata: nil, parent_grant_id: nil, source_id: nil)
        #   Response for a credit grant
        #
        #   @param id [String]
        #   @param created_at [Time]
        #   @param credit_entitlement_id [String]
        #   @param customer_id [String]
        #   @param initial_amount [String]
        #   @param is_expired [Boolean]
        #   @param is_rolled_over [Boolean]
        #   @param remaining_amount [String]
        #   @param rollover_count [Integer]
        #   @param source_type [Symbol, Dodopayments::Models::CreditEntitlements::BalanceListGrantsResponse::SourceType]
        #   @param updated_at [Time]
        #   @param expires_at [Time, nil]
        #   @param metadata [Hash{Symbol=>String}, nil]
        #   @param parent_grant_id [String, nil]
        #   @param source_id [String, nil]

        # @see Dodopayments::Models::CreditEntitlements::BalanceListGrantsResponse#source_type
        module SourceType
          extend Dodopayments::Internal::Type::Enum

          SUBSCRIPTION = :subscription
          ONE_TIME = :one_time
          ADDON = :addon
          API = :api
          ROLLOVER = :rollover

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
