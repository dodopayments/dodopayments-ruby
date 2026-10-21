# typed: strong

module Dodopayments
  module Models
    module Invoices
      class PaymentRetrieveParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Invoices::PaymentRetrieveParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :payment_id

        # The signed link token. If the business asks for a credential on its invoice
        # links, a valid token for this record replaces the credential.
        sig { returns(T.nilable(String)) }
        attr_reader :token

        sig { params(token: String).void }
        attr_writer :token

        sig do
          params(
            payment_id: String,
            token: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          payment_id:,
          # The signed link token. If the business asks for a credential on its invoice
          # links, a valid token for this record replaces the credential.
          token: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              payment_id: String,
              token: String,
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
