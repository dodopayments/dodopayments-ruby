# typed: strong

module Dodopayments
  module Models
    class UsageEventIngestResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::UsageEventIngestResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :ingested_count

      sig { params(ingested_count: Integer).returns(T.attached_class) }
      def self.new(ingested_count:)
      end

      sig { override.returns({ ingested_count: Integer }) }
      def to_hash
      end
    end
  end
end
