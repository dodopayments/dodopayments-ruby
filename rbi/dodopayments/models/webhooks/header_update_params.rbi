# typed: strong

module Dodopayments
  module Models
    module Webhooks
      class HeaderUpdateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Webhooks::HeaderUpdateParams,
              Dodopayments::Internal::AnyHash
            )
          end

        # Object of header-value pair to update or add
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :headers

        sig do
          params(
            headers: T::Hash[Symbol, String],
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Object of header-value pair to update or add
          headers:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              headers: T::Hash[Symbol, String],
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
