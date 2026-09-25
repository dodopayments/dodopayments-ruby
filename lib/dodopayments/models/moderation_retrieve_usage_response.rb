# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Moderation#retrieve_usage
    class ModerationRetrieveUsageResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute daily
      #   Your billable screens per UTC day for the last 30 days, charged or not. A day
      #   with no screens is not in the list.
      #
      #   @return [Array<Dodopayments::Models::ModerationRetrieveUsageResponse::Daily>]
      required :daily,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::ModerationRetrieveUsageResponse::Daily] }

      # @!attribute screens_to_next_block
      #   Billable screens still needed to fill the next block of 1000. A full block is
      #   charged within one hour, so this value is 1000 when your unbilled screens fill
      #   whole blocks.
      #
      #   @return [Integer]
      required :screens_to_next_block, Integer

      # @!attribute unbilled_screens
      #   Billable screens that Dodo Payments has not charged for yet.
      #
      #   @return [Integer]
      required :unbilled_screens, Integer

      # @!method initialize(daily:, screens_to_next_block:, unbilled_screens:)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ModerationRetrieveUsageResponse} for more details.
      #
      #   Your moderation usage.
      #
      #   @param daily [Array<Dodopayments::Models::ModerationRetrieveUsageResponse::Daily>] Your billable screens per UTC day for the last 30 days, charged or not. A day wi
      #
      #   @param screens_to_next_block [Integer] Billable screens still needed to fill the next block of 1000. A full block is ch
      #
      #   @param unbilled_screens [Integer] Billable screens that Dodo Payments has not charged for yet.

      class Daily < Dodopayments::Internal::Type::BaseModel
        # @!attribute date
        #   The UTC day.
        #
        #   @return [Date]
        required :date, Date

        # @!attribute screens
        #   Billable screens on that day.
        #
        #   @return [Integer]
        required :screens, Integer

        # @!method initialize(date:, screens:)
        #   @param date [Date] The UTC day.
        #
        #   @param screens [Integer] Billable screens on that day.
      end
    end
  end
end
