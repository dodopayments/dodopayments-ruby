# typed: strong

module Dodopayments
  module Models
    class DigitalProductDeliveryFile < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::DigitalProductDeliveryFile,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :file_id

      sig { returns(String) }
      attr_accessor :file_name

      sig { returns(String) }
      attr_accessor :url

      sig do
        params(file_id: String, file_name: String, url: String).returns(
          T.attached_class
        )
      end
      def self.new(file_id:, file_name:, url:)
      end

      sig do
        override.returns({ file_id: String, file_name: String, url: String })
      end
      def to_hash
      end
    end
  end
end
