# frozen_string_literal: true

module Dodopayments
  module Models
    class CheckoutSessionCustomization < Dodopayments::Internal::Type::BaseModel
      # @!attribute force_language
      #   Force the checkout interface to render in a specific language (e.g. `en`, `es`)
      #
      #   @return [String, nil]
      optional :force_language, String, nil?: true

      # @!attribute show_on_demand_tag
      #   Show on demand tag
      #
      #   Default is true
      #
      #   @return [Boolean, nil]
      optional :show_on_demand_tag, Dodopayments::Internal::Type::Boolean

      # @!attribute show_order_details
      #   Show order details by default
      #
      #   Default is true
      #
      #   @return [Boolean, nil]
      optional :show_order_details, Dodopayments::Internal::Type::Boolean

      # @!attribute theme
      #   Theme of the page (determines which mode - light/dark/system - to use)
      #
      #   Default is `System`.
      #
      #   @return [Symbol, Dodopayments::Models::CheckoutSessionCustomization::Theme, nil]
      optional :theme, enum: -> { Dodopayments::CheckoutSessionCustomization::Theme }

      # @!attribute theme_config
      #   Optional custom theme configuration with colors for light and dark modes
      #
      #   @return [Dodopayments::Models::ThemeConfig, nil]
      optional :theme_config, -> { Dodopayments::ThemeConfig }, nil?: true

      # @!method initialize(force_language: nil, show_on_demand_tag: nil, show_order_details: nil, theme: nil, theme_config: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::CheckoutSessionCustomization} for more details.
      #
      #   @param force_language [String, nil] Force the checkout interface to render in a specific language (e.g. `en`, `es`)
      #
      #   @param show_on_demand_tag [Boolean] Show on demand tag
      #
      #   @param show_order_details [Boolean] Show order details by default
      #
      #   @param theme [Symbol, Dodopayments::Models::CheckoutSessionCustomization::Theme] Theme of the page (determines which mode - light/dark/system - to use)
      #
      #   @param theme_config [Dodopayments::Models::ThemeConfig, nil] Optional custom theme configuration with colors for light and dark modes

      # Theme of the page (determines which mode - light/dark/system - to use)
      #
      # Default is `System`.
      #
      # @see Dodopayments::Models::CheckoutSessionCustomization#theme
      module Theme
        extend Dodopayments::Internal::Type::Enum

        DARK = :dark
        LIGHT = :light
        SYSTEM = :system

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
