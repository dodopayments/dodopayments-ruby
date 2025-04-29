# typed: strong

module Dodopayments
  module Resources
    class Invoices
      sig { returns(Dodopayments::Resources::Invoices::Payments) }
      attr_reader :payments

      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
