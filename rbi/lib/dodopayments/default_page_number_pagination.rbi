# typed: strong

module Dodopayments
  class DefaultPageNumberPagination
    include Dodopayments::Type::BasePage

    Elem = type_member

    sig { returns(T.nilable(T::Array[Elem])) }
    def items
    end

    sig { params(_: T.nilable(T::Array[Elem])).returns(T.nilable(T::Array[Elem])) }
    def items=(_)
    end

    sig { returns(String) }
    def inspect
    end
  end
end
