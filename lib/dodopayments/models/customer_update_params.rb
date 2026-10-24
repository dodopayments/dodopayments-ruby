# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Customers#update
    class CustomerUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute email
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute metadata
      #   Additional metadata for the customer
      #
      #   @return [Hash{Symbol=>String, Float, Boolean}, nil]
      optional :metadata,
               -> { Dodopayments::Internal::Type::HashOf[union: Dodopayments::MetadataItem] },
               nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute phone_number
      #
      #   @return [String, nil]
      optional :phone_number, String, nil?: true

      # @!attribute preferred_locale
      #   The language of the customer emails, a code from `GET /locales`. A value
      #   replaces the current language, and `null` removes it. Send this field only to
      #   change the language on purpose. With no language, the emails are in English.
      #
      #   @return [Symbol, Dodopayments::Models::Locale, nil]
      optional :preferred_locale, enum: -> { Dodopayments::Locale }, nil?: true

      # @!method initialize(customer_id:, email: nil, metadata: nil, name: nil, phone_number: nil, preferred_locale: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::CustomerUpdateParams} for more details.
      #
      #   @param customer_id [String]
      #
      #   @param email [String, nil]
      #
      #   @param metadata [Hash{Symbol=>String, Float, Boolean}, nil] Additional metadata for the customer
      #
      #   @param name [String, nil]
      #
      #   @param phone_number [String, nil]
      #
      #   @param preferred_locale [Symbol, Dodopayments::Models::Locale, nil] The language of the customer emails, a code from `GET /locales`. A value replace
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
