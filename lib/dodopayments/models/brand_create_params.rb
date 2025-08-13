# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Brands#create
    class BrandCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

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

      # @!attribute url
      #
      #   @return [String, nil]
      optional :url, String, nil?: true

      # @!method initialize(description: nil, name: nil, statement_descriptor: nil, support_email: nil, url: nil, request_options: {})
      #   @param description [String, nil]
      #   @param name [String, nil]
      #   @param statement_descriptor [String, nil]
      #   @param support_email [String, nil]
      #   @param url [String, nil]
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
