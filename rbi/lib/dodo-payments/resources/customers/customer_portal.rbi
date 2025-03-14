# typed: strong

module DodoPayments
  module Resources
    class Customers
      class CustomerPortal
        sig { returns(DodoPayments::Resources::Customers::CustomerPortal::Session) }
        def session
        end

        sig { params(client: DodoPayments::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
