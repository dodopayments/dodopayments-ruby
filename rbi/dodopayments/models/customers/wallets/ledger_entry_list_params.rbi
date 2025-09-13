# typed: strong

module Dodopayments
  module Models
    module Customers
      module Wallets
        class LedgerEntryListParams < Dodopayments::Internal::Type::BaseModel
          extend Dodopayments::Internal::Type::RequestParameters::Converter
          include Dodopayments::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Customers::Wallets::LedgerEntryListParams,
                Dodopayments::Internal::AnyHash
              )
            end

          # Optional currency filter
          sig { returns(T.nilable(Dodopayments::Currency::OrSymbol)) }
          attr_reader :currency

          sig { params(currency: Dodopayments::Currency::OrSymbol).void }
          attr_writer :currency

          sig { returns(T.nilable(Integer)) }
          attr_reader :page_number

          sig { params(page_number: Integer).void }
          attr_writer :page_number

          sig { returns(T.nilable(Integer)) }
          attr_reader :page_size

          sig { params(page_size: Integer).void }
          attr_writer :page_size

          sig do
            params(
              currency: Dodopayments::Currency::OrSymbol,
              page_number: Integer,
              page_size: Integer,
              request_options: Dodopayments::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Optional currency filter
            currency: nil,
            page_number: nil,
            page_size: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                currency: Dodopayments::Currency::OrSymbol,
                page_number: Integer,
                page_size: Integer,
                request_options: Dodopayments::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
