# typed: strong

module Dodopayments
  module Models
    class InvoiceListEventsResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::InvoiceListEventsResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Dodopayments::InvoiceEvent]) }
      attr_accessor :items

      sig do
        params(items: T::Array[Dodopayments::InvoiceEvent::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(items:)
      end

      sig { override.returns({ items: T::Array[Dodopayments::InvoiceEvent] }) }
      def to_hash
      end
    end
  end
end
