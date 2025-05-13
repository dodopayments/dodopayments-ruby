# typed: strong

module Dodopayments
  module Models
    module Products
      class ImageUpdateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Products::ImageUpdateParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :force_update

        sig do
          params(
            force_update: T.nilable(T::Boolean),
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
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
