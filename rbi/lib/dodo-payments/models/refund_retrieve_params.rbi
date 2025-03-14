# typed: strong

module DodoPayments
  module Models
    class RefundRetrieveParams < DodoPayments::BaseModel
      extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      sig do
        params(request_options: T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
          .returns(T.attached_class)
      end
      def self.new(request_options: {})
      end

      sig { override.returns({request_options: DodoPayments::RequestOptions}) }
      def to_hash
      end
    end
  end
end
