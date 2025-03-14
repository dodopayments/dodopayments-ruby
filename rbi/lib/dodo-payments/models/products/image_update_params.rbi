# typed: strong

module DodoPayments
  module Models
    module Products
      class ImageUpdateParams < DodoPayments::BaseModel
        extend DodoPayments::RequestParameters::Converter
        include DodoPayments::RequestParameters

        sig { returns(T.nilable(T::Boolean)) }
        def force_update
        end

        sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def force_update=(_)
        end

        sig do
          params(
            force_update: T.nilable(T::Boolean),
            request_options: T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(force_update: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              force_update: T.nilable(T::Boolean),
              request_options: DodoPayments::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
