# frozen_string_literal: true

module Dodopayments
  module Internal
    module Type
      # @api private
      #
      # A value from among a specified list of options. OpenAPI enum values map to Ruby
      #   values in the SDK as follows:
      #
      #   1. boolean => true | false
      #   2. integer => Integer
      #   3. float => Float
      #   4. string => Symbol
      #
      #   We can therefore convert string values to Symbols, but can't convert other
      #   values safely.
      #
      # @example
      #   # `intent_status` is a `Dodopayments::Models::IntentStatus`
      #   case intent_status
      #   when Dodopayments::Models::IntentStatus::SUCCEEDED
      #     # ...
      #   when Dodopayments::Models::IntentStatus::FAILED
      #     # ...
      #   when Dodopayments::Models::IntentStatus::CANCELLED
      #     # ...
      #   else
      #     puts(intent_status)
      #   end
      #
      # @example
      #   case intent_status
      #   in :succeeded
      #     # ...
      #   in :failed
      #     # ...
      #   in :cancelled
      #     # ...
      #   else
      #     puts(intent_status)
      #   end
      module Enum
        include Dodopayments::Internal::Type::Converter

        # All of the valid Symbol values for this enum.
        #
        # @return [Array<NilClass, Boolean, Integer, Float, Symbol>]
        def values = (@values ||= constants.map { const_get(_1) })

        # @api private
        #
        # Guard against thread safety issues by instantiating `@values`.
        private def finalize! = values

        # @param other [Object]
        #
        # @return [Boolean]
        def ===(other) = values.include?(other)

        # @param other [Object]
        #
        # @return [Boolean]
        def ==(other)
          other.is_a?(Module) && other.singleton_class <= Dodopayments::Enum && other.values.to_set == values.to_set
        end

        # @api private
        #
        # Unlike with primitives, `Enum` additionally validates that the value is a member
        #   of the enum.
        #
        # @param value [String, Symbol, Object]
        #
        # @param state [Hash{Symbol=>Object}] .
        #
        #   @option state [Boolean, :strong] :strictness
        #
        #   @option state [Hash{Symbol=>Object}] :exactness
        #
        #   @option state [Integer] :branched
        #
        # @return [Symbol, Object]
        def coerce(value, state:)
          exactness = state.fetch(:exactness)
          val = value.is_a?(String) ? value.to_sym : value

          if values.include?(val)
            exactness[:yes] += 1
            val
          else
            exactness[values.first&.class == val.class ? :maybe : :no] += 1
            value
          end
        end

        # @!parse
        #   # @api private
        #   #
        #   # @param value [Symbol, Object]
        #   #
        #   # @return [Symbol, Object]
        #   def dump(value) = super
      end
    end
  end
end
