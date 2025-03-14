# typed: strong

module DodoPayments
  module Models
    class LicenseActivateParams < DodoPayments::BaseModel
      extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      sig { returns(String) }
      def license_key
      end

      sig { params(_: String).returns(String) }
      def license_key=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig do
        params(
          license_key: String,
          name: String,
          request_options: T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(license_key:, name:, request_options: {})
      end

      sig do
        override.returns({license_key: String, name: String, request_options: DodoPayments::RequestOptions})
      end
      def to_hash
      end
    end
  end
end
