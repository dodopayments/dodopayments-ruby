# typed: strong

module Dodopayments
  module Models
    class LicenseKeyInstance < Dodopayments::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def business_id
      end

      sig { params(_: String).returns(String) }
      def business_id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(String) }
      def license_key_id
      end

      sig { params(_: String).returns(String) }
      def license_key_id=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig do
        params(id: String, business_id: String, created_at: Time, license_key_id: String, name: String)
          .returns(T.attached_class)
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
