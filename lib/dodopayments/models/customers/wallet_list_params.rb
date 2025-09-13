# frozen_string_literal: true

module Dodopayments
  module Models
    module Customers
      # @see Dodopayments::Resources::Customers::Wallets#list
      class WalletListParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
