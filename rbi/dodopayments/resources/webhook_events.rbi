# typed: strong

module Dodopayments
  module Resources
    class WebhookEvents
      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
