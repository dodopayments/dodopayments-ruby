# typed: strong

module Dodopayments
  module Internal
    class CursorPagePagination
      include Dodopayments::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :data

      sig { returns(String) }
      attr_accessor :iterator

      sig { returns(T::Boolean) }
      attr_accessor :done

      # @api private
      sig { returns(String) }
      def inspect
      end
    end
  end
end
