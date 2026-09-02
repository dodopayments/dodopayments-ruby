# typed: strong

module Dodopayments
  module Resources
    class Blocklist
      sig { returns(Dodopayments::Resources::Blocklist::Customers) }
      attr_reader :customers

      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
