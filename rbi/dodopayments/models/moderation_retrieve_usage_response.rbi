# typed: strong

module Dodopayments
  module Models
    class ModerationRetrieveUsageResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::ModerationRetrieveUsageResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # Your billable screens per UTC day for the last 30 days, charged or not. A day
      # with no screens is not in the list.
      sig do
        returns(
          T::Array[Dodopayments::Models::ModerationRetrieveUsageResponse::Daily]
        )
      end
      attr_accessor :daily

      # Billable screens still needed to fill the next block of 1000. A full block is
      # charged within one hour, so this value is 1000 when your unbilled screens fill
      # whole blocks.
      sig { returns(Integer) }
      attr_accessor :screens_to_next_block

      # Billable screens that Dodo Payments has not charged for yet.
      sig { returns(Integer) }
      attr_accessor :unbilled_screens

      # Your moderation usage.
      sig do
        params(
          daily:
            T::Array[
              Dodopayments::Models::ModerationRetrieveUsageResponse::Daily::OrHash
            ],
          screens_to_next_block: Integer,
          unbilled_screens: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Your billable screens per UTC day for the last 30 days, charged or not. A day
        # with no screens is not in the list.
        daily:,
        # Billable screens still needed to fill the next block of 1000. A full block is
        # charged within one hour, so this value is 1000 when your unbilled screens fill
        # whole blocks.
        screens_to_next_block:,
        # Billable screens that Dodo Payments has not charged for yet.
        unbilled_screens:
      )
      end

      sig do
        override.returns(
          {
            daily:
              T::Array[
                Dodopayments::Models::ModerationRetrieveUsageResponse::Daily
              ],
            screens_to_next_block: Integer,
            unbilled_screens: Integer
          }
        )
      end
      def to_hash
      end

      class Daily < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::ModerationRetrieveUsageResponse::Daily,
              Dodopayments::Internal::AnyHash
            )
          end

        # The UTC day.
        sig { returns(Date) }
        attr_accessor :date

        # Billable screens on that day.
        sig { returns(Integer) }
        attr_accessor :screens

        sig { params(date: Date, screens: Integer).returns(T.attached_class) }
        def self.new(
          # The UTC day.
          date:,
          # Billable screens on that day.
          screens:
        )
        end

        sig { override.returns({ date: Date, screens: Integer }) }
        def to_hash
        end
      end
    end
  end
end
