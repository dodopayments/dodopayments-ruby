# typed: strong

module Dodopayments
  module Resources
    class Products
      class Images
        sig do
          params(
            id: String,
            force_update: T.nilable(T::Boolean),
            request_options: T.nilable(T.any(Dodopayments::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Dodopayments::Models::Products::ImageUpdateResponse)
        end
        def update(
          # Product Id
          id,
          force_update: nil,
          request_options: {}
        )
        end

        sig { params(client: Dodopayments::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
