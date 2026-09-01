# frozen_string_literal: true

module Dodopayments
  module Models
    module Blocklist
      module CreateBlockedCustomerRequest
        extend Dodopayments::Internal::Type::Union

        variant -> { Dodopayments::Blocklist::CreateBlockedCustomerRequest::BlocklistCustomersBlockByCustomerID }

        variant -> { Dodopayments::Blocklist::CreateBlockedCustomerRequest::BlocklistCustomersBlockByEmail }

        class BlocklistCustomersBlockByCustomerID < Dodopayments::Models::Blocklist::BlockByCustomerID
          # @!attribute reason
          #   Why the merchant blocked this customer. The entry page shows it.
          #
          #   @return [String, nil]
          optional :reason, String, nil?: true

          # @!attribute source
          #   Screen the merchant blocked from. Ignored for an API-key caller, whose entry
          #   always records `api`. A dashboard caller that omits it records `blocklist_page`.
          #
          #   @return [Symbol, Dodopayments::Models::Blocklist::BlockedCustomerSource, nil]
          optional :source, enum: -> { Dodopayments::Blocklist::BlockedCustomerSource }, nil?: true

          # @!method initialize(reason: nil, source: nil)
          #   Some parameter documentations has been truncated, see
          #   {Dodopayments::Models::Blocklist::CreateBlockedCustomerRequest::BlocklistCustomersBlockByCustomerID}
          #   for more details.
          #
          #   @param reason [String, nil] Why the merchant blocked this customer. The entry page shows it.
          #
          #   @param source [Symbol, Dodopayments::Models::Blocklist::BlockedCustomerSource, nil] Screen the merchant blocked from. Ignored for an API-key caller, whose
        end

        class BlocklistCustomersBlockByEmail < Dodopayments::Models::Blocklist::BlockByEmail
          # @!attribute reason
          #   Why the merchant blocked this customer. The entry page shows it.
          #
          #   @return [String, nil]
          optional :reason, String, nil?: true

          # @!attribute source
          #   Screen the merchant blocked from. Ignored for an API-key caller, whose entry
          #   always records `api`. A dashboard caller that omits it records `blocklist_page`.
          #
          #   @return [Symbol, Dodopayments::Models::Blocklist::BlockedCustomerSource, nil]
          optional :source, enum: -> { Dodopayments::Blocklist::BlockedCustomerSource }, nil?: true

          # @!method initialize(reason: nil, source: nil)
          #   Some parameter documentations has been truncated, see
          #   {Dodopayments::Models::Blocklist::CreateBlockedCustomerRequest::BlocklistCustomersBlockByEmail}
          #   for more details.
          #
          #   @param reason [String, nil] Why the merchant blocked this customer. The entry page shows it.
          #
          #   @param source [Symbol, Dodopayments::Models::Blocklist::BlockedCustomerSource, nil] Screen the merchant blocked from. Ignored for an API-key caller, whose
        end

        # @!method self.variants
        #   @return [Array(Dodopayments::Models::Blocklist::CreateBlockedCustomerRequest::BlocklistCustomersBlockByCustomerID, Dodopayments::Models::Blocklist::CreateBlockedCustomerRequest::BlocklistCustomersBlockByEmail)]
      end
    end
  end
end
