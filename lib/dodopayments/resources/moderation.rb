# frozen_string_literal: true

module Dodopayments
  module Resources
    class Moderation
      # Shows how many billable screens you made and how close you are to your next
      # charge.
      #
      # **Billing.** A billable screen is a live-mode screen that returns a verdict.
      # Dodo Payments charges $0.30 for each full block of 1000 billable screens and
      # debits the fee from your balance. Each full block is charged within one hour.
      # Screens that do not fill a block stay unbilled until they do. Errors and
      # test-mode screens are free and are not counted.
      #
      # @overload retrieve_usage(request_options: {})
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::ModerationRetrieveUsageResponse]
      #
      # @see Dodopayments::Models::ModerationRetrieveUsageParams
      def retrieve_usage(params = {})
        @client.request(
          method: :get,
          path: "moderation/usage",
          model: Dodopayments::Models::ModerationRetrieveUsageResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::ModerationScreenParams} for more details.
      #
      # Screens text, an image, or both, and returns a verdict: `allow`, `flag` or
      # `deny`. The API is fail-closed: do not generate when you get no verdict.
      #
      # **Pricing.** Dodo Payments charges $0.30 per 1000 billable screens and debits
      # the fee from your balance. A billable screen is a live-mode screen that returns
      # a verdict. Errors and test-mode screens are free.
      #
      # **429.** Honour `Retry-After` and retry. A 429 is a throughput limit, not a
      # verdict.
      #
      # **Test mode** returns mock verdicts and never calls the model. The default
      # verdict is `allow`. Put one of these strings in `text` to select another
      # outcome: `dodo_mock_flag` (`flag`), `dodo_mock_deny` (`deny`),
      # `dodo_mock_overloaded` (429) or `dodo_mock_not_ready` (503).
      #
      # @overload screen(image: nil, request_id: nil, text: nil, request_options: {})
      #
      # @param image [String, nil] The image to screen, as base64, with or without a `data:image/...;base64,` prefi
      #
      # @param request_id [String, nil] Your identifier for this screen, up to 128 characters, with no control character
      #
      # @param text [String, nil] The text to screen, up to 8000 characters.
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::ModerationScreenResponse]
      #
      # @see Dodopayments::Models::ModerationScreenParams
      def screen(params = {})
        parsed, options = Dodopayments::ModerationScreenParams.dump_request(params)
        @client.request(
          method: :post,
          path: "moderation/screen",
          body: parsed,
          model: Dodopayments::Models::ModerationScreenResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
