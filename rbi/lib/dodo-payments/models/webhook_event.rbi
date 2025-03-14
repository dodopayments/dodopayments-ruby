# typed: strong

module DodoPayments
  module Models
    class WebhookEvent < DodoPayments::BaseModel
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
      def event_id
      end

      sig { params(_: String).returns(String) }
      def event_id=(_)
      end

      sig { returns(String) }
      def event_type
      end

      sig { params(_: String).returns(String) }
      def event_type=(_)
      end

      sig { returns(String) }
      def object_id_
      end

      sig { params(_: String).returns(String) }
      def object_id_=(_)
      end

      sig { returns(T.nilable(Time)) }
      def latest_attempted_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def latest_attempted_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def request
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def request=(_)
      end

      sig { returns(T.nilable(String)) }
      def response
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def response=(_)
      end

      sig do
        params(
          business_id: String,
          created_at: Time,
          event_id: String,
          event_type: String,
          object_id_: String,
          latest_attempted_at: T.nilable(Time),
          request: T.nilable(String),
          response: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        business_id:,
        created_at:,
        event_id:,
        event_type:,
        object_id_:,
        latest_attempted_at: nil,
        request: nil,
        response: nil
      )
      end

      sig do
        override
          .returns(
            {
              business_id: String,
              created_at: Time,
              event_id: String,
              event_type: String,
              object_id_: String,
              latest_attempted_at: T.nilable(Time),
              request: T.nilable(String),
              response: T.nilable(String)
            }
          )
      end
      def to_hash
      end
    end
  end
end
