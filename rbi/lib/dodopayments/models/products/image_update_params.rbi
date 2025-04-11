# typed: strong

module Dodopayments
  module Models
    module Products
      class ImageUpdateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        sig { returns(T.nilable(T::Boolean)) }
        def force_update
        end

        sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def force_update=(_)
        end

        sig do
          params(
            force_update: T.nilable(T::Boolean),
            request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(force_update: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              force_update: T.nilable(T::Boolean),
              request_options: Dodopayments::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
