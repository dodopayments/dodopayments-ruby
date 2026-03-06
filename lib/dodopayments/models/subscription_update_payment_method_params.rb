# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#update_payment_method
    class SubscriptionUpdatePaymentMethodParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute subscription_id
      #
      #   @return [String]
      required :subscription_id, String

      # @!attribute body
      #
      #   @return [Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::Body::New, Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::Body::Existing]
      required :body, union: -> { Dodopayments::SubscriptionUpdatePaymentMethodParams::Body }

      # @!method initialize(subscription_id:, body:, request_options: {})
      #   @param subscription_id [String]
      #   @param body [Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::Body::New, Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::Body::Existing]
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      module Body
        extend Dodopayments::Internal::Type::Union

        variant -> { Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::New }

        variant -> { Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::Existing }

        class New < Dodopayments::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::Body::New::Type]
          required :type, enum: -> { Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::New::Type }

          # @!attribute return_url
          #
          #   @return [String, nil]
          optional :return_url, String, nil?: true

          # @!method initialize(type:, return_url: nil)
          #   @param type [Symbol, Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::Body::New::Type]
          #   @param return_url [String, nil]

          # @see Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::Body::New#type
          module Type
            extend Dodopayments::Internal::Type::Enum

            NEW = :new

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Existing < Dodopayments::Internal::Type::BaseModel
          # @!attribute payment_method_id
          #
          #   @return [String]
          required :payment_method_id, String

          # @!attribute type
          #
          #   @return [Symbol, Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::Body::Existing::Type]
          required :type, enum: -> { Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::Existing::Type }

          # @!method initialize(payment_method_id:, type:)
          #   @param payment_method_id [String]
          #   @param type [Symbol, Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::Body::Existing::Type]

          # @see Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::Body::Existing#type
          module Type
            extend Dodopayments::Internal::Type::Enum

            EXISTING = :existing

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::Body::New, Dodopayments::Models::SubscriptionUpdatePaymentMethodParams::Body::Existing)]
      end
    end
  end
end
