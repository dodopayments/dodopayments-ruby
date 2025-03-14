# typed: strong

module DodoPayments
  module Models
    class LicenseValidateParams < DodoPayments::BaseModel
      extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      sig { returns(String) }
      def license_key
      end

      sig { params(_: String).returns(String) }
      def license_key=(_)
      end

      sig { returns(T.nilable(String)) }
      def license_key_instance_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def license_key_instance_id=(_)
      end

      sig do
        params(
          license_key: String,
          license_key_instance_id: T.nilable(String),
          request_options: T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(license_key:, license_key_instance_id: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              license_key: String,
              license_key_instance_id: T.nilable(String),
              request_options: DodoPayments::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
