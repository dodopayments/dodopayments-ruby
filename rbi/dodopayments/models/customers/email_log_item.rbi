# typed: strong

module Dodopayments
  module Models
    module Customers
      class EmailLogItem < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Customers::EmailLogItem,
              Dodopayments::Internal::AnyHash
            )
          end

        # The group this email belongs to: payments, refunds, subscriptions,
        # dunning_recovery, entitlements or auth.
        sig { returns(String) }
        attr_accessor :category

        # When this email was sent.
        sig { returns(Time) }
        attr_accessor :created_at

        # Identifies this email. Use it to read the body or to send it again.
        sig { returns(String) }
        attr_accessor :email_log_id

        # What kind of email this is, for example `payment_successful`.
        sig { returns(String) }
        attr_accessor :email_type

        # Whether this email has content to show. The content endpoint can still refuse,
        # because the content is removed after 180 days.
        sig { returns(T::Boolean) }
        attr_accessor :has_preview

        # What you may do with this email.
        sig { returns(Dodopayments::Customers::EmailPolicies) }
        attr_reader :policies

        sig do
          params(policies: Dodopayments::Customers::EmailPolicies::OrHash).void
        end
        attr_writer :policies

        # Where the email got to: sent, delivered, failed, complained or blocked.
        sig { returns(Dodopayments::Customers::EmailLogStatus::TaggedSymbol) }
        attr_accessor :status

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

        # The address the email was sent from.
        sig { returns(T.nilable(String)) }
        attr_accessor :from

        # The address the email reached.
        sig { returns(T.nilable(String)) }
        attr_accessor :recipient

        # The subject line as it was sent. Empty until the provider replicates.
        sig { returns(T.nilable(String)) }
        attr_accessor :subject

        sig do
          params(
            category: String,
            created_at: Time,
            email_log_id: String,
            email_type: String,
            has_preview: T::Boolean,
            policies: Dodopayments::Customers::EmailPolicies::OrHash,
            status: Dodopayments::Customers::EmailLogStatus::OrSymbol,
            failure_code:
              T.nilable(Dodopayments::Customers::EmailFailureCode::OrSymbol),
            failure_reason: T.nilable(String),
            from: T.nilable(String),
            recipient: T.nilable(String),
            subject: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The group this email belongs to: payments, refunds, subscriptions,
          # dunning_recovery, entitlements or auth.
          category:,
          # When this email was sent.
          created_at:,
          # Identifies this email. Use it to read the body or to send it again.
          email_log_id:,
          # What kind of email this is, for example `payment_successful`.
          email_type:,
          # Whether this email has content to show. The content endpoint can still refuse,
          # because the content is removed after 180 days.
          has_preview:,
          # What you may do with this email.
          policies:,
          # Where the email got to: sent, delivered, failed, complained or blocked.
          status:,
          # Why the email did not arrive. It is null unless the email failed.
          failure_code: nil,
          # A sentence that explains `failure_code`. It is null unless the email failed.
          failure_reason: nil,
          # The address the email was sent from.
          from: nil,
          # The address the email reached.
          recipient: nil,
          # The subject line as it was sent. Empty until the provider replicates.
          subject: nil
        )
        end

        sig do
          override.returns(
            {
              category: String,
              created_at: Time,
              email_log_id: String,
              email_type: String,
              has_preview: T::Boolean,
              policies: Dodopayments::Customers::EmailPolicies,
              status: Dodopayments::Customers::EmailLogStatus::TaggedSymbol,
              failure_code:
                T.nilable(
                  Dodopayments::Customers::EmailFailureCode::TaggedSymbol
                ),
              failure_reason: T.nilable(String),
              from: T.nilable(String),
              recipient: T.nilable(String),
              subject: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
