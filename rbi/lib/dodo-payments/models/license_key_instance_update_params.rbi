# typed: strong

module DodoPayments
  module Models
    class LicenseKeyInstanceUpdateParams < DodoPayments::BaseModel
      extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig do
        params(
          name: String,
          request_options: T.any(
            DodoPayments::RequestOptions,
            T::Hash[Symbol, T.anything]
          )
        )
          .returns(T.attached_class)
      end
      def self.new(name:, request_options: {})
      end

      sig { override.returns({name: String, request_options: DodoPayments::RequestOptions}) }
      def to_hash
      end
    end
  end
end
