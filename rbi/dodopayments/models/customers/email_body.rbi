# typed: strong

module Dodopayments
  module Models
    module Customers
      class EmailBody < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Customers::EmailBody,
              Dodopayments::Internal::AnyHash
            )
          end

        # Whether the merchant wrote this content. It is true for the recovery and dunning
        # emails, which the merchant writes.
        #
        # The content is email HTML. Render it in a sandbox, whatever this value is.
        sig { returns(T::Boolean) }
        attr_accessor :merchant_authored

        # Why the email did not arrive. It is null unless the email failed.
        sig do
          returns(
            T.nilable(Dodopayments::Customers::EmailFailureCode::TaggedSymbol)
          )
        end
        attr_accessor :failure_code

        # A sentence that explains `failure_code`. It is null unless the email failed.
        sig { returns(T.nilable(String)) }
        attr_accessor :failure_reason

        # The stored HTML. It is null on a text-only email.
        sig { returns(T.nilable(String)) }
        attr_accessor :html

        # The stored plain text.
        sig { returns(T.nilable(String)) }
        attr_accessor :text

        sig do
          params(
            merchant_authored: T::Boolean,
            failure_code:
              T.nilable(Dodopayments::Customers::EmailFailureCode::OrSymbol),
            failure_reason: T.nilable(String),
            html: T.nilable(String),
            text: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether the merchant wrote this content. It is true for the recovery and dunning
          # emails, which the merchant writes.
          #
          # The content is email HTML. Render it in a sandbox, whatever this value is.
          merchant_authored:,
          # Why the email did not arrive. It is null unless the email failed.
          failure_code: nil,
          # A sentence that explains `failure_code`. It is null unless the email failed.
          failure_reason: nil,
          # The stored HTML. It is null on a text-only email.
          html: nil,
          # The stored plain text.
          text: nil
        )
        end

        sig do
          override.returns(
            {
              merchant_authored: T::Boolean,
              failure_code:
                T.nilable(
                  Dodopayments::Customers::EmailFailureCode::TaggedSymbol
                ),
              failure_reason: T.nilable(String),
              html: T.nilable(String),
              text: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
