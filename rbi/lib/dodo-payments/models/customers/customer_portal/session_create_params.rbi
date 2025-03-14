# typed: strong

module DodoPayments
  module Models
    module Customers
      module CustomerPortal
        class SessionCreateParams < DodoPayments::BaseModel
          extend DodoPayments::RequestParameters::Converter
          include DodoPayments::RequestParameters

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
              request_options: T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(send_email: nil, request_options: {})
          end

          sig do
            override.returns(
              {
                send_email: T.nilable(T::Boolean),
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
end
