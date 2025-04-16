# frozen_string_literal: true

module Dodopayments
  # @api private
  module Internal
    OMIT =
      Object.new.tap do
        _1.define_singleton_method(:inspect) { "#<#{Dodopayments::Internal}::OMIT>" }
      end
        .freeze
  end
end
