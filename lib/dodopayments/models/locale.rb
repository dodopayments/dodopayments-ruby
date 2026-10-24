# frozen_string_literal: true

module Dodopayments
  module Models
    # A locale that the checkout and the customer portal can show.
    #
    # The codes are a copy of the checkout locales. `GET /locales` lists them.
    module Locale
      extend Dodopayments::Internal::Type::Enum

      AR = :ar
      CA = :ca
      ZH = :zh
      NL = :nl
      EN = :en
      FR = :fr
      DE = :de
      HE = :he
      ID = :id
      IT = :it
      JA = :ja
      KA = :ka
      KO = :ko
      MS = :ms
      PL = :pl
      PT = :pt
      RO = :ro
      RU = :ru
      ES = :es
      SV = :sv
      TH = :th
      TR = :tr

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
