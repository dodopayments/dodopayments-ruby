# frozen_string_literal: true

module Dodopayments
  module Models
    module Blocklist
      module Customers
        class NoteRequest < Dodopayments::Internal::Type::BaseModel
          # @!attribute note
          #
          #   @return [String]
          required :note, String

          # @!method initialize(note:)
          #   @param note [String]
        end
      end
    end
  end
end
