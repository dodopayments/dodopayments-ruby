# typed: strong

module Dodopayments
  module Models
    module Blocklist
      module CreateBlockedCustomerRequest
        extend Dodopayments::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Dodopayments::Blocklist::CreateBlockedCustomerRequest::BlocklistCustomersBlockByCustomerID,
              Dodopayments::Blocklist::CreateBlockedCustomerRequest::BlocklistCustomersBlockByEmail
            )
          end

        class BlocklistCustomersBlockByCustomerID < Dodopayments::Models::Blocklist::BlockByCustomerID
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Blocklist::CreateBlockedCustomerRequest::BlocklistCustomersBlockByCustomerID,
                Dodopayments::Internal::AnyHash
              )
            end

          # Why the merchant blocked this customer. The entry page shows it.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          # Screen the merchant blocked from. Ignored for an API-key caller, whose entry
          # always records `api`. A dashboard caller that omits it records `blocklist_page`.
          sig do
            returns(
              T.nilable(
                Dodopayments::Blocklist::BlockedCustomerSource::OrSymbol
              )
            )
          end
          attr_accessor :source

          sig do
            params(
              reason: T.nilable(String),
              source:
                T.nilable(
                  Dodopayments::Blocklist::BlockedCustomerSource::OrSymbol
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # Why the merchant blocked this customer. The entry page shows it.
            reason: nil,
            # Screen the merchant blocked from. Ignored for an API-key caller, whose entry
            # always records `api`. A dashboard caller that omits it records `blocklist_page`.
            source: nil
          )
          end

          sig do
            override.returns(
              {
                reason: T.nilable(String),
                source:
                  T.nilable(
                    Dodopayments::Blocklist::BlockedCustomerSource::OrSymbol
                  )
              }
            )
          end
          def to_hash
          end
        end

        class BlocklistCustomersBlockByEmail < Dodopayments::Models::Blocklist::BlockByEmail
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Blocklist::CreateBlockedCustomerRequest::BlocklistCustomersBlockByEmail,
                Dodopayments::Internal::AnyHash
              )
            end

          # Why the merchant blocked this customer. The entry page shows it.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          # Screen the merchant blocked from. Ignored for an API-key caller, whose entry
          # always records `api`. A dashboard caller that omits it records `blocklist_page`.
          sig do
            returns(
              T.nilable(
                Dodopayments::Blocklist::BlockedCustomerSource::OrSymbol
              )
            )
          end
          attr_accessor :source

          sig do
            params(
              reason: T.nilable(String),
              source:
                T.nilable(
                  Dodopayments::Blocklist::BlockedCustomerSource::OrSymbol
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # Why the merchant blocked this customer. The entry page shows it.
            reason: nil,
            # Screen the merchant blocked from. Ignored for an API-key caller, whose entry
            # always records `api`. A dashboard caller that omits it records `blocklist_page`.
            source: nil
          )
          end

          sig do
            override.returns(
              {
                reason: T.nilable(String),
                source:
                  T.nilable(
                    Dodopayments::Blocklist::BlockedCustomerSource::OrSymbol
                  )
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[
              Dodopayments::Blocklist::CreateBlockedCustomerRequest::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
