# typed: strong

module Dodopayments
  module Models
    class LicenseKeyInstance < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::LicenseKeyInstance,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :business_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :license_key_id

      sig { returns(String) }
      attr_accessor :name

      sig do
        params(
          id: String,
          business_id: String,
          created_at: Time,
          license_key_id: String,
          name: String
        ).returns(T.attached_class)
      end
      def self.new(id:, business_id:, created_at:, license_key_id:, name:)
      end

      sig do
        override.returns(
          {
            id: String,
            business_id: String,
            created_at: Time,
            license_key_id: String,
            name: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
