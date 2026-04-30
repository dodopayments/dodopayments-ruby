# frozen_string_literal: true

module Dodopayments
  module Models
    module EntitlementIntegrationType
      extend Dodopayments::Internal::Type::Enum

      DISCORD = :discord
      TELEGRAM = :telegram
      GITHUB = :github
      FIGMA = :figma
      FRAMER = :framer
      NOTION = :notion
      DIGITAL_FILES = :digital_files
      LICENSE_KEY = :license_key

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
