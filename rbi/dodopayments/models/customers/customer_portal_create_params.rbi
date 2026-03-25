# typed: strong

module Dodopayments
  module Models
    module Customers
      class CustomerPortalCreateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Customers::CustomerPortalCreateParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :customer_id

        # Optional return URL for this session. Overrides the business-level default. This
        # URL will be shown as a "Return to {business}" back button in the portal.
        sig { returns(T.nilable(String)) }
        attr_reader :return_url

        sig { params(return_url: String).void }
        attr_writer :return_url

        # If true, will send link to user.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :send_email

        sig { params(send_email: T::Boolean).void }
        attr_writer :send_email

        sig do
          params(
            customer_id: String,
            return_url: String,
            send_email: T::Boolean,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          customer_id:,
          # Optional return URL for this session. Overrides the business-level default. This
          # URL will be shown as a "Return to {business}" back button in the portal.
          return_url: nil,
          # If true, will send link to user.
          send_email: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              return_url: String,
              send_email: T::Boolean,
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
