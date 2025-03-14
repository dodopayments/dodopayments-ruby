# typed: strong

module Dodopayments
  class DefaultPageNumberPagination
    include Dodopayments::BasePage

    Elem = type_member

    sig { returns(T.nilable(T::Array[Elem])) }
    def items
    end

    sig { params(_: T.nilable(T::Array[Elem])).returns(T.nilable(T::Array[Elem])) }
    def items=(_)
    end
  end
end
