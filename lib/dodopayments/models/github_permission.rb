# frozen_string_literal: true

module Dodopayments
  module Models
    # Repository permission to grant on a `github` entitlement.
    module GitHubPermission
      extend Dodopayments::Internal::Type::Enum

      PULL = :pull
      PUSH = :push
      ADMIN = :admin
      MAINTAIN = :maintain
      TRIAGE = :triage

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
