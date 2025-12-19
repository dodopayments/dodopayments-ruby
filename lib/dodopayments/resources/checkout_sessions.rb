# frozen_string_literal: true

module Dodopayments
  module Resources
    class CheckoutSessions
      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::CheckoutSessionCreateParams} for more details.
      #
      # @overload create(product_cart:, allowed_payment_method_types: nil, billing_address: nil, billing_currency: nil, confirm: nil, customer: nil, customization: nil, discount_code: nil, feature_flags: nil, force_3ds: nil, metadata: nil, minimal_address: nil, return_url: nil, short_link: nil, show_saved_payment_methods: nil, subscription_data: nil, request_options: {})
      #
      # @param product_cart [Array<Dodopayments::Models::CheckoutSessionRequest::ProductCart>]
      #
      # @param allowed_payment_method_types [Array<Symbol, Dodopayments::Models::PaymentMethodTypes>, nil] Customers will never see payment methods that are not in this list.
      #
      # @param billing_address [Dodopayments::Models::CheckoutSessionRequest::BillingAddress, nil] Billing address information for the session
      #
      # @param billing_currency [Symbol, Dodopayments::Models::Currency, nil] This field is ingored if adaptive pricing is disabled
      #
      # @param confirm [Boolean] If confirm is true, all the details will be finalized. If required data is missi
      #
      # @param customer [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::NewCustomer, nil] Customer details for the session
      #
      # @param customization [Dodopayments::Models::CheckoutSessionRequest::Customization] Customization for the checkout session page
      #
      # @param discount_code [String, nil]
      #
      # @param feature_flags [Dodopayments::Models::CheckoutSessionRequest::FeatureFlags]
      #
      # @param force_3ds [Boolean, nil] Override merchant default 3DS behaviour for this session
      #
      # @param metadata [Hash{Symbol=>String}, nil] Additional metadata associated with the payment. Defaults to empty if not provid
      #
      # @param minimal_address [Boolean] If true, only zipcode is required when confirm is true; other address fields rem
      #
      # @param return_url [String, nil] The url to redirect after payment failure or success.
      #
      # @param short_link [Boolean] If true, returns a shortened checkout URL.
      #
      # @param show_saved_payment_methods [Boolean] Display saved payment methods of a returning customer False by default
      #
      # @param subscription_data [Dodopayments::Models::CheckoutSessionRequest::SubscriptionData, nil]
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::CheckoutSessionResponse]
      #
      # @see Dodopayments::Models::CheckoutSessionCreateParams
      def create(params)
        parsed, options = Dodopayments::CheckoutSessionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "checkouts",
          body: parsed,
          model: Dodopayments::CheckoutSessionResponse,
          options: options
        )
      end

      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::CheckoutSessionStatus]
      #
      # @see Dodopayments::Models::CheckoutSessionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["checkouts/%1$s", id],
          model: Dodopayments::CheckoutSessionStatus,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
