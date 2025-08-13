# typed: strong

module Dodopayments
  module Models
    class LicenseKeyDuration < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::LicenseKeyDuration,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :count

      sig { returns(Dodopayments::TimeInterval::OrSymbol) }
      attr_accessor :interval

      sig do
        params(
          count: Integer,
          interval: Dodopayments::TimeInterval::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(count:, interval:)
      end

      sig do
        override.returns(
          { count: Integer, interval: Dodopayments::TimeInterval::OrSymbol }
        )
      end
      def to_hash
      end
    end
  end
end
