# typed: strong

module Dodopayments
  module Resources
    class Invoices
      sig { returns(Dodopayments::Resources::Invoices::Payments) }
      def payments
      end

      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
