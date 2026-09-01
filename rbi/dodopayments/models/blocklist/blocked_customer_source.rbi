# typed: strong

module Dodopayments
  module Models
    module Blocklist
      # Where a block came from. `Api` marks an API-key caller, which carries no
      # dashboard actor. The other values name the screen the merchant used.
      module BlockedCustomerSource
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::Blocklist::BlockedCustomerSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BLOCKLIST_PAGE =
          T.let(
            :blocklist_page,
            Dodopayments::Blocklist::BlockedCustomerSource::TaggedSymbol
          )
        CUSTOMER_PAGE =
          T.let(
            :customer_page,
            Dodopayments::Blocklist::BlockedCustomerSource::TaggedSymbol
          )
        PAYMENT_PAGE =
          T.let(
            :payment_page,
            Dodopayments::Blocklist::BlockedCustomerSource::TaggedSymbol
          )
        DISPUTE_PAGE =
          T.let(
            :dispute_page,
            Dodopayments::Blocklist::BlockedCustomerSource::TaggedSymbol
          )
        API =
          T.let(
            :api,
            Dodopayments::Blocklist::BlockedCustomerSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::Blocklist::BlockedCustomerSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
