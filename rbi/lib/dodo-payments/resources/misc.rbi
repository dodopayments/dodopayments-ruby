# typed: strong

module DodoPayments
  module Resources
    class Misc
      sig { returns(DodoPayments::Resources::Misc::SupportedCountries) }
      def supported_countries
      end

      sig { params(client: DodoPayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
