# typed: strong

module DodoPayments
  module Models
    class Customer < DodoPayments::BaseModel
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
      def customer_id
      end

      sig { params(_: String).returns(String) }
      def customer_id=(_)
      end

      sig { returns(String) }
      def email
      end

      sig { params(_: String).returns(String) }
      def email=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(T.nilable(String)) }
      def phone_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def phone_number=(_)
      end

      sig do
        params(
          business_id: String,
          created_at: Time,
          customer_id: String,
          email: String,
          name: String,
          phone_number: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(business_id:, created_at:, customer_id:, email:, name:, phone_number: nil)
      end

      sig do
        override
          .returns(
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
