# typed: strong

module Dodopayments
  module Models
    module Blocklist
      class CustomerRetrieveParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Blocklist::CustomerRetrieveParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :entry_id

        sig do
          params(
            entry_id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(entry_id:, request_options: {})
        end

        sig do
          override.returns(
            { entry_id: String, request_options: Dodopayments::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
