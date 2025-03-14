# frozen_string_literal: true

module DodoPayments
  module Models
    class LicenseKey < DodoPayments::BaseModel
      # @!attribute id
      #   The unique identifier of the license key.
      #
      #   @return [String]
      required :id, String

      # @!attribute business_id
      #   The unique identifier of the business associated with the license key.
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #   The timestamp indicating when the license key was created, in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute customer_id
      #   The unique identifier of the customer associated with the license key.
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute instances_count
      #   The current number of instances activated for this license key.
      #
      #   @return [Integer]
      required :instances_count, Integer

      # @!attribute key
      #   The license key string.
      #
      #   @return [String]
      required :key, String

      # @!attribute payment_id
      #   The unique identifier of the payment associated with the license key.
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute product_id
      #   The unique identifier of the product associated with the license key.
      #
      #   @return [String]
      required :product_id, String

      # @!attribute status
      #
      #   @return [Symbol, DodoPayments::Models::LicenseKey::Status]
      required :status, enum: -> { DodoPayments::Models::LicenseKey::Status }

      # @!attribute activations_limit
      #   The maximum number of activations allowed for this license key.
      #
      #   @return [Integer, nil]
      optional :activations_limit, Integer, nil?: true

      # @!attribute expires_at
      #   The timestamp indicating when the license key expires, in UTC.
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!attribute subscription_id
      #   The unique identifier of the subscription associated with the license key, if
      #     any.
      #
      #   @return [String, nil]
      optional :subscription_id, String, nil?: true

      # @!parse
      #   # @param id [String]
      #   # @param business_id [String]
      #   # @param created_at [Time]
      #   # @param customer_id [String]
      #   # @param instances_count [Integer]
      #   # @param key [String]
      #   # @param payment_id [String]
      #   # @param product_id [String]
      #   # @param status [Symbol, DodoPayments::Models::LicenseKey::Status]
      #   # @param activations_limit [Integer, nil]
      #   # @param expires_at [Time, nil]
      #   # @param subscription_id [String, nil]
      #   #
      #   def initialize(
      #     id:,
      #     business_id:,
      #     created_at:,
      #     customer_id:,
      #     instances_count:,
      #     key:,
      #     payment_id:,
      #     product_id:,
      #     status:,
      #     activations_limit: nil,
      #     expires_at: nil,
      #     subscription_id: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | DodoPayments::BaseModel) -> void

      # @abstract
      class Status < DodoPayments::Enum
        ACTIVE = :active
        EXPIRED = :expired
        DISABLED = :disabled

        finalize!
      end
    end
  end
end
