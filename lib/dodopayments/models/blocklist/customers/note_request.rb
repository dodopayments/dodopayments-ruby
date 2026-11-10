# frozen_string_literal: true

module Dodopayments
  module Models
    module Blocklist
      module Customers
        class NoteRequest < Dodopayments::Internal::Type::BaseModel
          # @!attribute text
          #
          #   @return [String]
          required :text, String

          # @!method initialize(text:)
          #   @param text [String]
        end
      end
    end
  end
end
