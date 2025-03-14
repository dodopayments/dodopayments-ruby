# typed: strong

module DodoPayments
  module Models
    class LicenseKeyListResponseItem < DodoPayments::BaseModel
      sig { returns(T::Array[DodoPayments::Models::LicenseKey]) }
      def items
      end

      sig { params(_: T::Array[DodoPayments::Models::LicenseKey]).returns(T::Array[DodoPayments::Models::LicenseKey]) }
      def items=(_)
      end

      sig { params(items: T::Array[DodoPayments::Models::LicenseKey]).returns(T.attached_class) }
      def self.new(items:)
      end

      sig { override.returns({items: T::Array[DodoPayments::Models::LicenseKey]}) }
      def to_hash
      end
    end

    LicenseKeyListResponse = T.type_alias { T::Array[DodoPayments::Models::LicenseKeyListResponseItem] }
  end
end
