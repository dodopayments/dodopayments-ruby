# frozen_string_literal: true

module DodoPayments
  module Models
    module Misc
      SupportedCountryListResponse = DodoPayments::ArrayOf[enum: -> { DodoPayments::Models::Misc::CountryCode }]
    end
  end
end
