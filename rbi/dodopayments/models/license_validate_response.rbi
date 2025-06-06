# typed: strong

module Dodopayments
  module Models
    class LicenseValidateResponse < Dodopayments::Internal::Type::BaseModel
      sig { returns(T::Boolean) }
      attr_accessor :valid

      sig { params(valid: T::Boolean).returns(T.attached_class) }
      def self.new(valid:); end

      sig { override.returns({valid: T::Boolean}) }
      def to_hash; end
    end
  end
end
