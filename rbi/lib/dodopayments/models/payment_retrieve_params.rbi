# typed: strong

module Dodopayments
  module Models
    class PaymentRetrieveParams < Dodopayments::BaseModel
      extend Dodopayments::RequestParameters::Converter
      include Dodopayments::RequestParameters

      sig do
        params(request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(request_options: {})
      end

      sig { override.returns({request_options: Dodopayments::RequestOptions}) }
      def to_hash
      end
    end
  end
end
