# typed: strong

module DodoPayments
  module Resources
    class Invoices
      sig { returns(DodoPayments::Resources::Invoices::Payments) }
      def payments
      end

      sig { params(client: DodoPayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
