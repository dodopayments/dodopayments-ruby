# typed: strong

module Dodopayments
  module Models
    class LocaleInfo < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::LocaleInfo, Dodopayments::Internal::AnyHash)
        end

      # The code to send in the `locale` parameter.
      sig { returns(Dodopayments::Locale::TaggedSymbol) }
      attr_accessor :code

      # The English name of the language.
      sig { returns(String) }
      attr_accessor :name

      # The name of the language in that language.
      sig { returns(String) }
      attr_accessor :native_name

      # A locale that the checkout and the customer portal can show.
      sig do
        params(
          code: Dodopayments::Locale::OrSymbol,
          name: String,
          native_name: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The code to send in the `locale` parameter.
        code:,
        # The English name of the language.
        name:,
        # The name of the language in that language.
        native_name:
      )
      end

      sig do
        override.returns(
          {
            code: Dodopayments::Locale::TaggedSymbol,
            name: String,
            native_name: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
