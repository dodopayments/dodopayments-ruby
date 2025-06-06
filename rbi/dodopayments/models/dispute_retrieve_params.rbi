# typed: strong

module Dodopayments
  module Models
    class DisputeRetrieveParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      sig do
        params(request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(request_options: {}); end

      sig { override.returns({request_options: Dodopayments::RequestOptions}) }
      def to_hash; end
    end
  end
end
