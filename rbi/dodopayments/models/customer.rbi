# typed: strong

module Dodopayments
  module Models
    class Customer < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, Dodopayments::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :business_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(String) }
      attr_accessor :email

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(String)) }
      attr_accessor :phone_number

      sig do
        params(
          business_id: String,
          created_at: Time,
          customer_id: String,
          email: String,
          name: String,
          phone_number: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        business_id:,
        created_at:,
        customer_id:,
        email:,
        name:,
        phone_number: nil
      )
      end

      sig do
        override.returns(
          {
            business_id: String,
            created_at: Time,
            customer_id: String,
            email: String,
            name: String,
            phone_number: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
