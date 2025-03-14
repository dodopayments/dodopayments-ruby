# typed: strong

module DodoPayments
  module Models
    class LicenseKeyUpdateParams < DodoPayments::BaseModel
      extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      # The updated activation limit for the license key. Use `null` to remove the
      #   limit, or omit this field to leave it unchanged.
      sig { returns(T.nilable(Integer)) }
      def activations_limit
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def activations_limit=(_)
      end

      # Indicates whether the license key should be disabled. A value of `true` disables
      #   the key, while `false` enables it. Omit this field to leave it unchanged.
      sig { returns(T.nilable(T::Boolean)) }
      def disabled
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def disabled=(_)
      end

      # The updated expiration timestamp for the license key in UTC. Use `null` to
      #   remove the expiration date, or omit this field to leave it unchanged.
      sig { returns(T.nilable(Time)) }
      def expires_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def expires_at=(_)
      end

      sig do
        params(
          activations_limit: T.nilable(Integer),
          disabled: T.nilable(T::Boolean),
          expires_at: T.nilable(Time),
          request_options: T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(activations_limit: nil, disabled: nil, expires_at: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              activations_limit: T.nilable(Integer),
              disabled: T.nilable(T::Boolean),
              expires_at: T.nilable(Time),
              request_options: DodoPayments::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
