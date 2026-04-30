# frozen_string_literal: true

module Dodopayments
  module Models
    module Entitlements
      # @see Dodopayments::Resources::Entitlements::Grants#revoke
      class GrantRevokeParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute grant_id
        #
        #   @return [String]
        required :grant_id, String

        # @!method initialize(id:, grant_id:, request_options: {})
        #   @param id [String]
        #   @param grant_id [String]
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
