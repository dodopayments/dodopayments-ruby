# typed: strong

module DodoPayments
  module Models
    class LicenseDeactivateParams < DodoPayments::BaseModel
      extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      sig { returns(String) }
      def license_key
      end

      sig { params(_: String).returns(String) }
      def license_key=(_)
      end

      sig { returns(String) }
      def license_key_instance_id
      end

      sig { params(_: String).returns(String) }
      def license_key_instance_id=(_)
      end

      sig do
        params(
          license_key: String,
          license_key_instance_id: String,
          request_options: T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(license_key:, license_key_instance_id:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              license_key: String,
              license_key_instance_id: String,
              request_options: DodoPayments::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
