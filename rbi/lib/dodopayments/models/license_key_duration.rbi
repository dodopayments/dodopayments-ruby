# typed: strong

module Dodopayments
  module Models
    class LicenseKeyDuration < Dodopayments::Internal::Type::BaseModel
      sig { returns(Integer) }
      def count
      end

      sig { params(_: Integer).returns(Integer) }
      def count=(_)
      end

      sig { returns(Dodopayments::Models::TimeInterval::OrSymbol) }
      def interval
      end

      sig do
        params(_: Dodopayments::Models::TimeInterval::OrSymbol)
          .returns(Dodopayments::Models::TimeInterval::OrSymbol)
      end
      def interval=(_)
      end

      sig { params(count: Integer, interval: Dodopayments::Models::TimeInterval::OrSymbol).returns(T.attached_class) }
      def self.new(count:, interval:)
      end

      sig { override.returns({count: Integer, interval: Dodopayments::Models::TimeInterval::OrSymbol}) }
      def to_hash
      end
    end
  end
end
