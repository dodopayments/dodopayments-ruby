# frozen_string_literal: true

module Dodopayments
  module Models
    # @type [Dodopayments::Internal::Type::Converter]
    MiscListLocalesResponse = Dodopayments::Internal::Type::ArrayOf[-> { Dodopayments::LocaleInfo }]
  end
end
