# frozen_string_literal: true

module Dodopayments
  module Type
    # @api private
    #
    # @example
    #   # `price` is a `Dodopayments::Models::Price`
    #   case price
    #   when Dodopayments::Models::Price::OneTimePrice
    #     puts(price.currency)
    #   when Dodopayments::Models::Price::RecurringPrice
    #     puts(price.discount)
    #   else
    #     puts(price)
    #   end
    #
    # @example
    #   case price
    #   in {type: :one_time_price, currency: currency, discount: discount, price: price}
    #     puts(currency)
    #   in {type: :recurring_price, currency: currency, discount: discount, payment_frequency_count: payment_frequency_count}
    #     puts(discount)
    #   else
    #     puts(price)
    #   end
    module Union
      include Dodopayments::Type::Converter

      # @api private
      #
      # All of the specified variant info for this union.
      #
      # @return [Array<Array(Symbol, Proc)>]
      private def known_variants = (@known_variants ||= [])

      # @api private
      #
      # @return [Array<Array(Symbol, Object)>]
      protected def derefed_variants
        @known_variants.map { |key, variant_fn| [key, variant_fn.call] }
      end

      # All of the specified variants for this union.
      #
      # @return [Array<Object>]
      def variants = derefed_variants.map(&:last)

      # @api private
      #
      # @param property [Symbol]
      private def discriminator(property)
        case property
        in Symbol
          @discriminator = property
        end
      end

      # @api private
      #
      # @param key [Symbol, Hash{Symbol=>Object}, Proc, Dodopayments::Type::Converter, Class]
      #
      # @param spec [Hash{Symbol=>Object}, Proc, Dodopayments::Type::Converter, Class] .
      #
      #   @option spec [NilClass, TrueClass, FalseClass, Integer, Float, Symbol] :const
      #
      #   @option spec [Proc] :enum
      #
      #   @option spec [Proc] :union
      #
      #   @option spec [Boolean] :"nil?"
      private def variant(key, spec = nil)
        variant_info =
          case key
          in Symbol
            [key, Dodopayments::Type::Converter.type_info(spec)]
          in Proc | Dodopayments::Type::Converter | Class | Hash
            [nil, Dodopayments::Type::Converter.type_info(key)]
          end

        known_variants << variant_info
      end

      # @api private
      #
      # @param value [Object]
      #
      # @return [Dodopayments::Type::Converter, Class, nil]
      private def resolve_variant(value)
        case [@discriminator, value]
        in [_, Dodopayments::BaseModel]
          value.class
        in [Symbol, Hash]
          key = value.fetch(@discriminator) do
            value.fetch(@discriminator.to_s, Dodopayments::Util::OMIT)
          end

          return nil if key == Dodopayments::Util::OMIT

          key = key.to_sym if key.is_a?(String)
          known_variants.find { |k,| k == key }&.last&.call
        else
          nil
        end
      end

      # rubocop:disable Style/HashEachMethods
      # rubocop:disable Style/CaseEquality

      # @param other [Object]
      #
      # @return [Boolean]
      def ===(other)
        known_variants.any? do |_, variant_fn|
          variant_fn.call === other
        end
      end

      # @param other [Object]
      #
      # @return [Boolean]
      def ==(other)
        # rubocop:disable Layout/LineLength
        other.is_a?(Module) && other.singleton_class <= Dodopayments::Union && other.derefed_variants == derefed_variants
        # rubocop:enable Layout/LineLength
      end

      # @api private
      #
      # @param value [Object]
      #
      # @param state [Hash{Symbol=>Object}] .
      #
      #   @option state [Boolean, :strong] :strictness
      #
      #   @option state [Hash{Symbol=>Object}] :exactness
      #
      #   @option state [Integer] :branched
      #
      # @return [Object]
      def coerce(value, state:)
        if (target = resolve_variant(value))
          return Dodopayments::Type::Converter.coerce(target, value, state: state)
        end

        strictness = state.fetch(:strictness)
        exactness = state.fetch(:exactness)
        state[:strictness] = strictness == :strong ? true : strictness

        alternatives = []
        known_variants.each do |_, variant_fn|
          target = variant_fn.call
          exact = state[:exactness] = {yes: 0, no: 0, maybe: 0}
          state[:branched] += 1

          coerced = Dodopayments::Type::Converter.coerce(target, value, state: state)
          yes, no, maybe = exact.values
          if (no + maybe).zero? || (!strictness && yes.positive?)
            exact.each { exactness[_1] += _2 }
            state[:exactness] = exactness
            return coerced
          elsif maybe.positive?
            alternatives << [[-yes, -maybe, no], exact, coerced]
          end
        end

        case alternatives.sort_by(&:first)
        in []
          exactness[:no] += 1
          if strictness == :strong
            message = "no possible conversion of #{value.class} into a variant of #{target.inspect}"
            raise ArgumentError.new(message)
          end
          value
        in [[_, exact, coerced], *]
          exact.each { exactness[_1] += _2 }
          coerced
        end
          .tap { state[:exactness] = exactness }
      ensure
        state[:strictness] = strictness
      end

      # @api private
      #
      # @param value [Object]
      #
      # @return [Object]
      def dump(value)
        if (target = resolve_variant(value))
          return Dodopayments::Type::Converter.dump(target, value)
        end

        known_variants.each do
          target = _2.call
          return Dodopayments::Type::Converter.dump(target, value) if target === value
        end

        super
      end

      # rubocop:enable Style/CaseEquality
      # rubocop:enable Style/HashEachMethods
    end
  end
end
