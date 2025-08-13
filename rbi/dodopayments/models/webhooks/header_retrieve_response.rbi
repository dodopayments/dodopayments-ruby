# typed: strong

module Dodopayments
  module Models
    module Webhooks
      class HeaderRetrieveResponse < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::Webhooks::HeaderRetrieveResponse,
              Dodopayments::Internal::AnyHash
            )
          end

        # List of headers configured
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :headers

        # Sensitive headers without the value
        sig { returns(T::Array[String]) }
        attr_accessor :sensitive

        # The value of the headers is returned in the `headers` field.
        #
        # Sensitive headers that have been redacted are returned in the sensitive field.
        sig do
          params(
            headers: T::Hash[Symbol, String],
            sensitive: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # List of headers configured
          headers:,
          # Sensitive headers without the value
          sensitive:
        )
        end

        sig do
          override.returns(
            { headers: T::Hash[Symbol, String], sensitive: T::Array[String] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
