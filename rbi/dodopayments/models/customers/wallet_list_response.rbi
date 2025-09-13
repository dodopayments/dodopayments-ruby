# typed: strong

module Dodopayments
  module Models
    module Customers
      class WalletListResponse < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::Customers::WalletListResponse,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Dodopayments::Customers::CustomerWallet]) }
        attr_accessor :items

        # Sum of all wallet balances converted to USD (in smallest unit)
        sig { returns(Integer) }
        attr_accessor :total_balance_usd

        sig do
          params(
            items: T::Array[Dodopayments::Customers::CustomerWallet::OrHash],
            total_balance_usd: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          items:,
          # Sum of all wallet balances converted to USD (in smallest unit)
          total_balance_usd:
        )
        end

        sig do
          override.returns(
            {
              items: T::Array[Dodopayments::Customers::CustomerWallet],
              total_balance_usd: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
