# typed: strong

module Dodopayments
  module Resources
    class Misc
      # Lists the locales that a translation can have.
      sig do
        params(request_options: Dodopayments::RequestOptions::OrHash).returns(
          T::Array[Dodopayments::LocaleInfo]
        )
      end
      def list_locales(request_options: {})
      end

      sig do
        params(request_options: Dodopayments::RequestOptions::OrHash).returns(
          T::Array[Dodopayments::CountryCode::TaggedSymbol]
        )
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
