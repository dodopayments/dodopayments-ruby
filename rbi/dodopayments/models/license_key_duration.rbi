# typed: strong

module Dodopayments
  module Models
    class LicenseKeyDuration < Dodopayments::Internal::Type::BaseModel
      sig { returns(Integer) }
      attr_accessor :count

      sig { returns(Dodopayments::Models::TimeInterval::OrSymbol) }
      attr_accessor :interval

      sig { params(count: Integer, interval: Dodopayments::Models::TimeInterval::OrSymbol).returns(T.attached_class) }
      def self.new(count:, interval:); end

      sig { override.returns({count: Integer, interval: Dodopayments::Models::TimeInterval::OrSymbol}) }
      def to_hash; end
    end
  end
end
