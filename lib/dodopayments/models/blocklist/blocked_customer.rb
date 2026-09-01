# frozen_string_literal: true

module Dodopayments
  module Models
    module Blocklist
      # @see Dodopayments::Resources::Blocklist::Customers#create
      class BlockedCustomer < Dodopayments::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute customer_email
        #
        #   @return [String]
        required :customer_email, String

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute customer_name
        #
        #   @return [String]
        required :customer_name, String

        # @!attribute identifier
        #   Customer id or email that the merchant supplied.
        #
        #   @return [String]
        required :identifier, String

        # @!attribute source
        #   Where a block came from. `Api` marks an API-key caller, which carries no
        #   dashboard actor. The other values name the screen the merchant used.
        #
        #   @return [Symbol, Dodopayments::Models::Blocklist::BlockedCustomerSource]
        required :source, enum: -> { Dodopayments::Blocklist::BlockedCustomerSource }

        # @!attribute blocked_by_email
        #   Dashboard user who blocked the customer. `null` for an API-key caller.
        #
        #   @return [String, nil]
        optional :blocked_by_email, String, nil?: true

        # @!attribute cancelled_subscription_ids
        #   Subscriptions this block cancelled. Present on the create response only.
        #
        #   @return [Array<String>, nil]
        optional :cancelled_subscription_ids, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute notes
        #   Activity log. Present on the detail response only.
        #
        #   @return [Array<Dodopayments::Models::Blocklist::Customers::BlockedCustomerNote>, nil]
        optional :notes,
                 -> {
                   Dodopayments::Internal::Type::ArrayOf[Dodopayments::Blocklist::Customers::BlockedCustomerNote]
                 },
                 nil?: true

        # @!attribute reason
        #
        #   @return [String, nil]
        optional :reason, String, nil?: true

        # @!attribute remaining_subscription_ids
        #   Subscriptions this block left live, because the cancel failed or the inline
        #   batch filled up. Repeat the create call to continue; the block itself is already
        #   in force.
        #
        #   @return [Array<String>, nil]
        optional :remaining_subscription_ids, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute subscriptions_swept
        #   False when the block left live subscriptions behind, including the case where
        #   the sweep could not list them and `remaining_subscription_ids` is therefore
        #   unknown. Repeat the create call until it reads true.
        #
        #   @return [Boolean, nil]
        optional :subscriptions_swept, Dodopayments::Internal::Type::Boolean, nil?: true

        # @!attribute unblocked_at
        #
        #   @return [Time, nil]
        optional :unblocked_at, Time, nil?: true

        # @!method initialize(id:, created_at:, customer_email:, customer_id:, customer_name:, identifier:, source:, blocked_by_email: nil, cancelled_subscription_ids: nil, notes: nil, reason: nil, remaining_subscription_ids: nil, subscriptions_swept: nil, unblocked_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Blocklist::BlockedCustomer} for more details.
        #
        #   @param id [String]
        #
        #   @param created_at [Time]
        #
        #   @param customer_email [String]
        #
        #   @param customer_id [String]
        #
        #   @param customer_name [String]
        #
        #   @param identifier [String] Customer id or email that the merchant supplied.
        #
        #   @param source [Symbol, Dodopayments::Models::Blocklist::BlockedCustomerSource] Where a block came from. `Api` marks an API-key caller, which carries no
        #
        #   @param blocked_by_email [String, nil] Dashboard user who blocked the customer. `null` for an API-key caller.
        #
        #   @param cancelled_subscription_ids [Array<String>, nil] Subscriptions this block cancelled. Present on the create response only.
        #
        #   @param notes [Array<Dodopayments::Models::Blocklist::Customers::BlockedCustomerNote>, nil] Activity log. Present on the detail response only.
        #
        #   @param reason [String, nil]
        #
        #   @param remaining_subscription_ids [Array<String>, nil] Subscriptions this block left live, because the cancel failed or the
        #
        #   @param subscriptions_swept [Boolean, nil] False when the block left live subscriptions behind, including the case
        #
        #   @param unblocked_at [Time, nil]
      end
    end
  end
end
