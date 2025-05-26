# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Brands#list
    class BrandListResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute items
      #   List of brands for this business
      #
      #   @return [Array<Dodopayments::Models::BrandListResponse::Item>]
      required :items,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::BrandListResponse::Item] }

      # @!method initialize(items:)
      #   @param items [Array<Dodopayments::Models::BrandListResponse::Item>] List of brands for this business

      class Item < Dodopayments::Internal::Type::BaseModel
        # @!attribute brand_id
        #
        #   @return [String]
        required :brand_id, String

        # @!attribute business_id
        #
        #   @return [String]
        required :business_id, String

        # @!attribute enabled
        #
        #   @return [Boolean]
        required :enabled, Dodopayments::Internal::Type::Boolean

        # @!attribute statement_descriptor
        #
        #   @return [String]
        required :statement_descriptor, String

        # @!attribute verification_enabled
        #
        #   @return [Boolean]
        required :verification_enabled, Dodopayments::Internal::Type::Boolean

        # @!attribute verification_status
        #
        #   @return [Symbol, Dodopayments::Models::BrandListResponse::Item::VerificationStatus]
        required :verification_status,
                 enum: -> { Dodopayments::Models::BrandListResponse::Item::VerificationStatus }

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute image
        #
        #   @return [String, nil]
        optional :image, String, nil?: true

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute reason_for_hold
        #   Incase the brand verification fails or is put on hold
        #
        #   @return [String, nil]
        optional :reason_for_hold, String, nil?: true

        # @!attribute support_email
        #
        #   @return [String, nil]
        optional :support_email, String, nil?: true

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String, nil?: true

        # @!method initialize(brand_id:, business_id:, enabled:, statement_descriptor:, verification_enabled:, verification_status:, description: nil, image: nil, name: nil, reason_for_hold: nil, support_email: nil, url: nil)
        #   @param brand_id [String]
        #
        #   @param business_id [String]
        #
        #   @param enabled [Boolean]
        #
        #   @param statement_descriptor [String]
        #
        #   @param verification_enabled [Boolean]
        #
        #   @param verification_status [Symbol, Dodopayments::Models::BrandListResponse::Item::VerificationStatus]
        #
        #   @param description [String, nil]
        #
        #   @param image [String, nil]
        #
        #   @param name [String, nil]
        #
        #   @param reason_for_hold [String, nil] Incase the brand verification fails or is put on hold
        #
        #   @param support_email [String, nil]
        #
        #   @param url [String, nil]

        # @see Dodopayments::Models::BrandListResponse::Item#verification_status
        module VerificationStatus
          extend Dodopayments::Internal::Type::Enum

          SUCCESS = :Success
          FAIL = :Fail
          REVIEW = :Review
          HOLD = :Hold

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
