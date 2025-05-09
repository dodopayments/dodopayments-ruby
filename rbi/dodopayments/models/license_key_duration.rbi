# typed: strong

module Dodopayments
  module Models
    class LicenseKeyDuration < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, Dodopayments::Internal::AnyHash) }

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
