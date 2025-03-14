# typed: strong

module Dodopayments
  module Models
    class LicenseKeyDuration < Dodopayments::BaseModel
      sig { returns(Integer) }
      def count
      end

      sig { params(_: Integer).returns(Integer) }
      def count=(_)
      end

      sig { returns(Symbol) }
      def interval
      end

      sig { params(_: Symbol).returns(Symbol) }
      def interval=(_)
      end

      sig { params(count: Integer, interval: Symbol).returns(T.attached_class) }
      def self.new(count:, interval:)
      end

      sig { override.returns({count: Integer, interval: Symbol}) }
      def to_hash
      end
    end
  end
end
