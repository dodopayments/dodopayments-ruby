# frozen_string_literal: true

module Dodopayments
  module Models
    module Blocklist
      module Customers
        # @see Dodopayments::Resources::Blocklist::Customers::Notes#create
        class BlockedCustomerNote < Dodopayments::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute note
          #
          #   @return [String]
          required :note, String

          # @!attribute author_email
          #
          #   @return [String, nil]
          optional :author_email, String, nil?: true

          # @!attribute updated_at
          #
          #   @return [Time, nil]
          optional :updated_at, Time, nil?: true

          # @!method initialize(id:, created_at:, note:, author_email: nil, updated_at: nil)
          #   @param id [String]
          #   @param created_at [Time]
          #   @param note [String]
          #   @param author_email [String, nil]
          #   @param updated_at [Time, nil]
        end
      end
    end
  end
end
