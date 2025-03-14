# typed: strong

module DodoPayments
  module Models
    class LicenseValidateResponse < DodoPayments::BaseModel
      sig { returns(T::Boolean) }
      def valid
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def valid=(_)
      end

      sig { params(valid: T::Boolean).returns(T.attached_class) }
      def self.new(valid:)
      end

      sig { override.returns({valid: T::Boolean}) }
      def to_hash
      end
    end
  end
end
