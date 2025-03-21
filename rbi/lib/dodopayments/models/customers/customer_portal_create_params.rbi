# typed: strong

module Dodopayments
  module Models
    module Customers
      class CustomerPortalCreateParams < Dodopayments::BaseModel
        extend Dodopayments::RequestParameters::Converter
        include Dodopayments::RequestParameters

        # If true, will send link to user.
        sig { returns(T.nilable(T::Boolean)) }
        def send_email
        end

        sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def send_email=(_)
        end

        sig do
          params(
            send_email: T.nilable(T::Boolean),
            request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(send_email: nil, request_options: {})
        end

        sig do
          override.returns({send_email: T.nilable(T::Boolean), request_options: Dodopayments::RequestOptions})
        end
        def to_hash
        end
      end
    end
  end
end
