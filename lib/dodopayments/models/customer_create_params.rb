# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Customers#create
    class CustomerCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute metadata
      #   Additional metadata for the customer
      #
      #   @return [Hash{Symbol=>String, Float, Boolean}, nil]
      optional :metadata, -> { Dodopayments::Internal::Type::HashOf[union: Dodopayments::MetadataItem] }

      # @!attribute phone_number
      #
      #   @return [String, nil]
      optional :phone_number, String, nil?: true

      # @!attribute preferred_locale
      #   The language of the customer emails, a code from `GET /locales`. With no value,
      #   the emails are in English until a checkout or the customer portal sets a
      #   language.
      #
      #   @return [Symbol, Dodopayments::Models::Locale, nil]
      optional :preferred_locale, enum: -> { Dodopayments::Locale }, nil?: true

      # @!method initialize(email:, name:, metadata: nil, phone_number: nil, preferred_locale: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::CustomerCreateParams} for more details.
      #
      #   @param email [String]
      #
      #   @param name [String]
      #
      #   @param metadata [Hash{Symbol=>String, Float, Boolean}] Additional metadata for the customer
      #
      #   @param phone_number [String, nil]
      #
      #   @param preferred_locale [Symbol, Dodopayments::Models::Locale, nil] The language of the customer emails, a code from `GET /locales`. With no value,
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
