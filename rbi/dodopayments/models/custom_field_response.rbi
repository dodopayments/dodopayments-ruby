# typed: strong

module Dodopayments
  module Models
    class CustomFieldResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CustomFieldResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # Key matching the custom field definition
      sig { returns(String) }
      attr_accessor :key

      # Value provided by customer
      sig { returns(String) }
      attr_accessor :value

      # Customer's response to a custom field
      sig { params(key: String, value: String).returns(T.attached_class) }
      def self.new(
        # Key matching the custom field definition
        key:,
        # Value provided by customer
        value:
      )
      end

      sig { override.returns({ key: String, value: String }) }
      def to_hash
      end
    end
  end
end
