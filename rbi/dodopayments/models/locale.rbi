# typed: strong

module Dodopayments
  module Models
    # A locale that the checkout and the customer portal can show.
    #
    # The codes are a copy of the checkout locales. `GET /locales` lists them.
    module Locale
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Locale) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      AR = T.let(:ar, Dodopayments::Locale::TaggedSymbol)
      CA = T.let(:ca, Dodopayments::Locale::TaggedSymbol)
      ZH = T.let(:zh, Dodopayments::Locale::TaggedSymbol)
      NL = T.let(:nl, Dodopayments::Locale::TaggedSymbol)
      EN = T.let(:en, Dodopayments::Locale::TaggedSymbol)
      FR = T.let(:fr, Dodopayments::Locale::TaggedSymbol)
      DE = T.let(:de, Dodopayments::Locale::TaggedSymbol)
      HE = T.let(:he, Dodopayments::Locale::TaggedSymbol)
      ID = T.let(:id, Dodopayments::Locale::TaggedSymbol)
      IT = T.let(:it, Dodopayments::Locale::TaggedSymbol)
      JA = T.let(:ja, Dodopayments::Locale::TaggedSymbol)
      KA = T.let(:ka, Dodopayments::Locale::TaggedSymbol)
      KO = T.let(:ko, Dodopayments::Locale::TaggedSymbol)
      MS = T.let(:ms, Dodopayments::Locale::TaggedSymbol)
      PL = T.let(:pl, Dodopayments::Locale::TaggedSymbol)
      PT = T.let(:pt, Dodopayments::Locale::TaggedSymbol)
      RO = T.let(:ro, Dodopayments::Locale::TaggedSymbol)
      RU = T.let(:ru, Dodopayments::Locale::TaggedSymbol)
      ES = T.let(:es, Dodopayments::Locale::TaggedSymbol)
      SV = T.let(:sv, Dodopayments::Locale::TaggedSymbol)
      TH = T.let(:th, Dodopayments::Locale::TaggedSymbol)
      TR = T.let(:tr, Dodopayments::Locale::TaggedSymbol)

      sig { override.returns(T::Array[Dodopayments::Locale::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
