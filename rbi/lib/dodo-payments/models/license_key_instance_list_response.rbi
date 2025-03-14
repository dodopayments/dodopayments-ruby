# typed: strong

module DodoPayments
  module Models
    class LicenseKeyInstanceListResponseItem < DodoPayments::BaseModel
      sig { returns(T::Array[DodoPayments::Models::LicenseKeyInstance]) }
      def items
      end

      sig do
        params(_: T::Array[DodoPayments::Models::LicenseKeyInstance])
          .returns(T::Array[DodoPayments::Models::LicenseKeyInstance])
      end
      def items=(_)
      end

      sig { params(items: T::Array[DodoPayments::Models::LicenseKeyInstance]).returns(T.attached_class) }
      def self.new(items:)
      end

      sig { override.returns({items: T::Array[DodoPayments::Models::LicenseKeyInstance]}) }
      def to_hash
      end
    end

    LicenseKeyInstanceListResponse = T.type_alias { T::Array[DodoPayments::Models::LicenseKeyInstanceListResponseItem] }
  end
end
