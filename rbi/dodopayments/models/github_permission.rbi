# typed: strong

module Dodopayments
  module Models
    # Repository permission to grant on a `github` entitlement.
    module GitHubPermission
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Dodopayments::GitHubPermission) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PULL = T.let(:pull, Dodopayments::GitHubPermission::TaggedSymbol)
      PUSH = T.let(:push, Dodopayments::GitHubPermission::TaggedSymbol)
      ADMIN = T.let(:admin, Dodopayments::GitHubPermission::TaggedSymbol)
      MAINTAIN = T.let(:maintain, Dodopayments::GitHubPermission::TaggedSymbol)
      TRIAGE = T.let(:triage, Dodopayments::GitHubPermission::TaggedSymbol)

      sig do
        override.returns(T::Array[Dodopayments::GitHubPermission::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
