# frozen_string_literal: true

module Dodopayments
  module Models
    class ThemeConfig < Dodopayments::Internal::Type::BaseModel
      # @!attribute dark
      #   Dark mode color configuration
      #
      #   @return [Dodopayments::Models::ThemeModeConfig, nil]
      optional :dark, -> { Dodopayments::ThemeModeConfig }, nil?: true

      # @!attribute font_primary_url
      #   URL for the primary font. Must be a valid https:// URL.
      #
      #   @return [String, nil]
      optional :font_primary_url, String, nil?: true

      # @!attribute font_secondary_url
      #   URL for the secondary font. Must be a valid https:// URL.
      #
      #   @return [String, nil]
      optional :font_secondary_url, String, nil?: true

      # @!attribute font_size
      #   Font size for the checkout UI
      #
      #   @return [Symbol, Dodopayments::Models::ThemeConfig::FontSize, nil]
      optional :font_size, enum: -> { Dodopayments::ThemeConfig::FontSize }, nil?: true

      # @!attribute font_weight
      #   Font weight for the checkout UI
      #
      #   @return [Symbol, Dodopayments::Models::ThemeConfig::FontWeight, nil]
      optional :font_weight, enum: -> { Dodopayments::ThemeConfig::FontWeight }, nil?: true

      # @!attribute light
      #   Light mode color configuration
      #
      #   @return [Dodopayments::Models::ThemeModeConfig, nil]
      optional :light, -> { Dodopayments::ThemeModeConfig }, nil?: true

      # @!attribute pay_button_text
      #   Custom text for the pay button (e.g., "Complete Purchase", "Subscribe Now"). Max
      #   100 characters.
      #
      #   @return [String, nil]
      optional :pay_button_text, String, nil?: true

      # @!attribute radius
      #   Border radius for UI elements. Must be a number followed by px, rem, or em
      #   (e.g., "4px", "0.5rem", "1em")
      #
      #   @return [String, nil]
      optional :radius, String, nil?: true

      # @!method initialize(dark: nil, font_primary_url: nil, font_secondary_url: nil, font_size: nil, font_weight: nil, light: nil, pay_button_text: nil, radius: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ThemeConfig} for more details.
      #
      #   Custom theme configuration with colors for light and dark modes.
      #
      #   @param dark [Dodopayments::Models::ThemeModeConfig, nil] Dark mode color configuration
      #
      #   @param font_primary_url [String, nil] URL for the primary font. Must be a valid https:// URL.
      #
      #   @param font_secondary_url [String, nil] URL for the secondary font. Must be a valid https:// URL.
      #
      #   @param font_size [Symbol, Dodopayments::Models::ThemeConfig::FontSize, nil] Font size for the checkout UI
      #
      #   @param font_weight [Symbol, Dodopayments::Models::ThemeConfig::FontWeight, nil] Font weight for the checkout UI
      #
      #   @param light [Dodopayments::Models::ThemeModeConfig, nil] Light mode color configuration
      #
      #   @param pay_button_text [String, nil] Custom text for the pay button (e.g., "Complete Purchase", "Subscribe Now"). Max
      #
      #   @param radius [String, nil] Border radius for UI elements. Must be a number followed by px, rem, or em (e.g.

      # Font size for the checkout UI
      #
      # @see Dodopayments::Models::ThemeConfig#font_size
      module FontSize
        extend Dodopayments::Internal::Type::Enum

        XS = :xs
        SM = :sm
        MD = :md
        LG = :lg
        XL = :xl
        FONT_SIZE_2XL = :"2xl"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Font weight for the checkout UI
      #
      # @see Dodopayments::Models::ThemeConfig#font_weight
      module FontWeight
        extend Dodopayments::Internal::Type::Enum

        NORMAL = :normal
        MEDIUM = :medium
        BOLD = :bold
        EXTRA_BOLD = :extraBold

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
