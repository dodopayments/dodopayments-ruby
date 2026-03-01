# typed: strong

module Dodopayments
  module Models
    module CreditEntitlements
      module LedgerEntryType
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::CreditEntitlements::LedgerEntryType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :credit,
            Dodopayments::CreditEntitlements::LedgerEntryType::TaggedSymbol
          )
        DEBIT =
          T.let(
            :debit,
            Dodopayments::CreditEntitlements::LedgerEntryType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::CreditEntitlements::LedgerEntryType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
