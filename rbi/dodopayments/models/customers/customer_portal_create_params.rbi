# typed: strong

module Dodopayments
  module Models
    module Customers
      class CustomerPortalCreateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # If true, will send link to user.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :send_email

        sig do
          params(
            send_email: T.nilable(T::Boolean),
            request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # If true, will send link to user.
          send_email: nil,
          request_options: {}
        ); end
        sig do
          override.returns({send_email: T.nilable(T::Boolean), request_options: Dodopayments::RequestOptions})
        end
        def to_hash; end
      end
    end
  end
end
