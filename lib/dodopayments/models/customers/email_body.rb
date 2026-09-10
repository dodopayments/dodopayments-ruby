# frozen_string_literal: true

module Dodopayments
  module Models
    module Customers
      # @see Dodopayments::Resources::Customers::Emails#retrieve_body
      class EmailBody < Dodopayments::Internal::Type::BaseModel
        # @!attribute merchant_authored
        #   Whether the merchant wrote this content. It is true for the recovery and dunning
        #   emails, which the merchant writes.
        #
        #   The content is email HTML. Render it in a sandbox, whatever this value is.
        #
        #   @return [Boolean]
        required :merchant_authored, Dodopayments::Internal::Type::Boolean

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

        # @!attribute html
        #   The stored HTML. It is null on a text-only email.
        #
        #   @return [String, nil]
        optional :html, String, nil?: true

        # @!attribute text
        #   The stored plain text.
        #
        #   @return [String, nil]
        optional :text, String, nil?: true

        # @!method initialize(merchant_authored:, failure_code: nil, failure_reason: nil, html: nil, text: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Customers::EmailBody} for more details.
        #
        #   @param merchant_authored [Boolean] Whether the merchant wrote this content. It is true for the recovery
        #
        #   @param failure_code [Symbol, Dodopayments::Models::Customers::EmailFailureCode, nil] Why the email did not arrive. It is null unless the email failed.
        #
        #   @param failure_reason [String, nil] A sentence that explains `failure_code`. It is null unless the email
        #
        #   @param html [String, nil] The stored HTML. It is null on a text-only email.
        #
        #   @param text [String, nil] The stored plain text.
      end
    end
  end
end
