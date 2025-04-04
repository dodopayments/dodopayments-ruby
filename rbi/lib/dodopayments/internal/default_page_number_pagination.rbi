# typed: strong

module Dodopayments
  module Internal
    class DefaultPageNumberPagination
      Elem = type_member

      include Dodopayments::Internal::Type::BasePage

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :items

      sig { returns(String) }
      def inspect
      end
    end
  end
end
