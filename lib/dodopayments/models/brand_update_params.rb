# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Brands#update
    class BrandUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute image_id
      #   The UUID you got back from the presigned‐upload call
      #
      #   @return [String, nil]
      optional :image_id, String, nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute statement_descriptor
      #
      #   @return [String, nil]
      optional :statement_descriptor, String, nil?: true

      # @!attribute support_email
      #
      #   @return [String, nil]
      optional :support_email, String, nil?: true

      # @!method initialize(image_id: nil, name: nil, statement_descriptor: nil, support_email: nil, request_options: {})
      #   @param image_id [String, nil] The UUID you got back from the presigned‐upload call
      #
      #   @param name [String, nil]
      #
      #   @param statement_descriptor [String, nil]
      #
      #   @param support_email [String, nil]
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
