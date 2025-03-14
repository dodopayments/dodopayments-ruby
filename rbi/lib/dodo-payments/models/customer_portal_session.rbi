# typed: strong

module DodoPayments
  module Models
    class CustomerPortalSession < DodoPayments::BaseModel
      sig { returns(String) }
      def link
      end

      sig { params(_: String).returns(String) }
      def link=(_)
      end

      sig { params(link: String).returns(T.attached_class) }
      def self.new(link:)
      end

      sig { override.returns({link: String}) }
      def to_hash
      end
    end
  end
end
