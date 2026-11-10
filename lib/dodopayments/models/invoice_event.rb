# frozen_string_literal: true

module Dodopayments
  module Models
    class InvoiceEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute actor
      #   A user ID, `api_key`, `customer` or `system`.
      #
      #   @return [String]
      required :actor, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute event_id
      #
      #   @return [String]
      required :event_id, String

      # @!attribute event_type
      #
      #   @return [String]
      required :event_type, String

      # @!attribute payload
      #
      #   @return [Object]
      required :payload, Dodopayments::Internal::Type::Unknown

      # @!attribute row_version
      #
      #   @return [Integer]
      required :row_version, Integer

      # @!attribute actor_email
      #
      #   @return [String, nil]
      optional :actor_email, String, nil?: true

      # @!method initialize(actor:, created_at:, event_id:, event_type:, payload:, row_version:, actor_email: nil)
      #   @param actor [String] A user ID, `api_key`, `customer` or `system`.
      #
      #   @param created_at [Time]
      #
      #   @param event_id [String]
      #
      #   @param event_type [String]
      #
      #   @param payload [Object]
      #
      #   @param row_version [Integer]
      #
      #   @param actor_email [String, nil]
    end
  end
end
