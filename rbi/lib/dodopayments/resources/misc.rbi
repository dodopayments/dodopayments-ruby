# typed: strong

module Dodopayments
  module Resources
    class Misc
      sig do
        params(request_options: T.nilable(T.any(Dodopayments::RequestOptions, Dodopayments::Util::AnyHash)))
          .returns(T::Array[Dodopayments::Models::CountryCode::TaggedSymbol])
      end
      def list_supported_countries(request_options: {})
      end

      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
