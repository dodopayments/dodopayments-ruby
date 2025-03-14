# frozen_string_literal: true

module DodoPayments
  module Models
    class LicenseKeyInstance < DodoPayments::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute business_id
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute license_key_id
      #
      #   @return [String]
      required :license_key_id, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!parse
      #   # @param id [String]
      #   # @param business_id [String]
      #   # @param created_at [Time]
      #   # @param license_key_id [String]
      #   # @param name [String]
      #   #
      #   def initialize(id:, business_id:, created_at:, license_key_id:, name:, **) = super

      # def initialize: (Hash | DodoPayments::BaseModel) -> void
    end
  end
end
