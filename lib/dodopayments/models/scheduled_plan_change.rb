# frozen_string_literal: true

module Dodopayments
  module Models
    class ScheduledPlanChange < Dodopayments::Internal::Type::BaseModel
      # @!attribute id
      #   The scheduled plan change ID
      #
      #   @return [String]
      required :id, String

      # @!attribute addons
      #   Addons included in the scheduled change
      #
      #   @return [Array<Dodopayments::Models::ScheduledPlanChange::Addon>]
      required :addons, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::ScheduledPlanChange::Addon] }

      # @!attribute created_at
      #   When this scheduled change was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute effective_at
      #   When the change will be applied
      #
      #   @return [Time]
      required :effective_at, Time

      # @!attribute product_id
      #   The product ID the subscription will change to
      #
      #   @return [String]
      required :product_id, String

      # @!attribute quantity
      #   Quantity for the new plan
      #
      #   @return [Integer]
      required :quantity, Integer

      # @!attribute product_description
      #   Description of the product being changed to
      #
      #   @return [String, nil]
      optional :product_description, String, nil?: true

      # @!attribute product_name
      #   Name of the product being changed to
      #
      #   @return [String, nil]
      optional :product_name, String, nil?: true

      # @!method initialize(id:, addons:, created_at:, effective_at:, product_id:, quantity:, product_description: nil, product_name: nil)
      #   @param id [String] The scheduled plan change ID
      #
      #   @param addons [Array<Dodopayments::Models::ScheduledPlanChange::Addon>] Addons included in the scheduled change
      #
      #   @param created_at [Time] When this scheduled change was created
      #
      #   @param effective_at [Time] When the change will be applied
      #
      #   @param product_id [String] The product ID the subscription will change to
      #
      #   @param quantity [Integer] Quantity for the new plan
      #
      #   @param product_description [String, nil] Description of the product being changed to
      #
      #   @param product_name [String, nil] Name of the product being changed to

      class Addon < Dodopayments::Internal::Type::BaseModel
        # @!attribute addon_id
        #   The addon ID
        #
        #   @return [String]
        required :addon_id, String

        # @!attribute name
        #   Name of the addon
        #
        #   @return [String]
        required :name, String

        # @!attribute quantity
        #   Quantity of the addon
        #
        #   @return [Integer]
        required :quantity, Integer

        # @!method initialize(addon_id:, name:, quantity:)
        #   @param addon_id [String] The addon ID
        #
        #   @param name [String] Name of the addon
        #
        #   @param quantity [Integer] Quantity of the addon
      end
    end
  end
end
