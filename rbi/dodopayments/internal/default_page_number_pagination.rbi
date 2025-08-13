# typed: strong

module Dodopayments
  module Internal
    class DefaultPageNumberPagination
      include Dodopayments::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :items

      # @api private
      sig { returns(String) }
      def inspect
      end
    end
  end
end
