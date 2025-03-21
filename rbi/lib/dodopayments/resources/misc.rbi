# typed: strong

module Dodopayments
  module Resources
    class Misc
      sig do
        params(request_options: T.nilable(T.any(Dodopayments::RequestOptions, T::Hash[Symbol, T.anything])))
          .returns(T::Array[Symbol])
      end
      def list_supported_countries(request_options: {})
      end

      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
