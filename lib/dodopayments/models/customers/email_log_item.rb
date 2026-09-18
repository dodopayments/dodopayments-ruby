# frozen_string_literal: true

module Dodopayments
  module Models
    module Customers
      # @see Dodopayments::Resources::Customers::Emails#list
      class EmailLogItem < Dodopayments::Internal::Type::BaseModel
        # @!attribute category
        #   The group this email belongs to: payments, refunds, subscriptions,
        #   dunning_recovery, entitlements or auth.
        #
        #   @return [String]
        required :category, String

        # @!attribute created_at
        #   When this email was sent.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute email_log_id
        #   Identifies this email. Use it to read the body or to send it again.
        #
        #   @return [String]
        required :email_log_id, String

        # @!attribute email_type
        #   What kind of email this is, for example `payment_successful`.
        #
        #   @return [String]
        required :email_type, String

        # @!attribute has_preview
        #   Whether this email has content to show. The content endpoint can still refuse,
        #   because the content is removed after 180 days.
        #
        #   @return [Boolean]
        required :has_preview, Dodopayments::Internal::Type::Boolean

        # @!attribute policies
        #   What you may do with this email.
        #
        #   @return [Dodopayments::Models::Customers::EmailPolicies]
        required :policies, -> { Dodopayments::Customers::EmailPolicies }

        # @!attribute status
        #   Where the email got to: sent, delivered, failed, complained or blocked.
        #
        #   @return [Symbol, Dodopayments::Models::Customers::EmailLogStatus]
        required :status, enum: -> { Dodopayments::Customers::EmailLogStatus }

        # @!attribute failure_code
        #   Why the email did not arrive. It is null unless the email failed.
        #
        #   @return [Symbol, Dodopayments::Models::Customers::EmailFailureCode, nil]
        optional :failure_code, enum: -> { Dodopayments::Customers::EmailFailureCode }, nil?: true

        # @!attribute failure_reason
        #   A sentence that explains `failure_code`. It is null unless the email failed.
        #
        #   @return [String, nil]
        optional :failure_reason, String, nil?: true

        # @!attribute from
        #   The address the email was sent from.
        #
        #   @return [String, nil]
        optional :from, String, nil?: true

        # @!attribute recipient
        #   The address the email reached.
        #
        #   @return [String, nil]
        optional :recipient, String, nil?: true

        # @!attribute subject
        #   The subject line as it was sent. Empty until the provider replicates.
        #
        #   @return [String, nil]
        optional :subject, String, nil?: true

        # @!method initialize(category:, created_at:, email_log_id:, email_type:, has_preview:, policies:, status:, failure_code: nil, failure_reason: nil, from: nil, recipient: nil, subject: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Customers::EmailLogItem} for more details.
        #
        #   @param category [String] The group this email belongs to: payments, refunds, subscriptions,
        #
        #   @param created_at [Time] When this email was sent.
        #
        #   @param email_log_id [String] Identifies this email. Use it to read the body or to send it again.
        #
        #   @param email_type [String] What kind of email this is, for example `payment_successful`.
        #
        #   @param has_preview [Boolean] Whether this email has content to show. The content endpoint can still
        #
        #   @param policies [Dodopayments::Models::Customers::EmailPolicies] What you may do with this email.
        #
        #   @param status [Symbol, Dodopayments::Models::Customers::EmailLogStatus] Where the email got to: sent, delivered, failed, complained or blocked.
        #
        #   @param failure_code [Symbol, Dodopayments::Models::Customers::EmailFailureCode, nil] Why the email did not arrive. It is null unless the email failed.
        #
        #   @param failure_reason [String, nil] A sentence that explains `failure_code`. It is null unless the email
        #
        #   @param from [String, nil] The address the email was sent from.
        #
        #   @param recipient [String, nil] The address the email reached.
        #
        #   @param subject [String, nil] The subject line as it was sent. Empty until the provider replicates.
      end
    end
  end
end
