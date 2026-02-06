# frozen_string_literal: true

module Dodopayments
  module Models
    class ThemeModeConfig < Dodopayments::Internal::Type::BaseModel
      # @!attribute bg_primary
      #   Background primary color
      #
      #   Examples: `"#ffffff"`, `"rgb(255, 255, 255)"`, `"white"`
      #
      #   @return [String, nil]
      optional :bg_primary, String, nil?: true

      # @!attribute bg_secondary
      #   Background secondary color
      #
      #   @return [String, nil]
      optional :bg_secondary, String, nil?: true

      # @!attribute border_primary
      #   Border primary color
      #
      #   @return [String, nil]
      optional :border_primary, String, nil?: true

      # @!attribute border_secondary
      #   Border secondary color
      #
      #   @return [String, nil]
      optional :border_secondary, String, nil?: true

      # @!attribute button_primary
      #   Primary button background color
      #
      #   @return [String, nil]
      optional :button_primary, String, nil?: true

      # @!attribute button_primary_hover
      #   Primary button hover color
      #
      #   @return [String, nil]
      optional :button_primary_hover, String, nil?: true

      # @!attribute button_secondary
      #   Secondary button background color
      #
      #   @return [String, nil]
      optional :button_secondary, String, nil?: true

      # @!attribute button_secondary_hover
      #   Secondary button hover color
      #
      #   @return [String, nil]
      optional :button_secondary_hover, String, nil?: true

      # @!attribute button_text_primary
      #   Primary button text color
      #
      #   @return [String, nil]
      optional :button_text_primary, String, nil?: true

      # @!attribute button_text_secondary
      #   Secondary button text color
      #
      #   @return [String, nil]
      optional :button_text_secondary, String, nil?: true

      # @!attribute input_focus_border
      #   Input focus border color
      #
      #   @return [String, nil]
      optional :input_focus_border, String, nil?: true

      # @!attribute text_error
      #   Text error color
      #
      #   @return [String, nil]
      optional :text_error, String, nil?: true

      # @!attribute text_placeholder
      #   Text placeholder color
      #
      #   @return [String, nil]
      optional :text_placeholder, String, nil?: true

      # @!attribute text_primary
      #   Text primary color
      #
      #   @return [String, nil]
      optional :text_primary, String, nil?: true

      # @!attribute text_secondary
      #   Text secondary color
      #
      #   @return [String, nil]
      optional :text_secondary, String, nil?: true

      # @!attribute text_success
      #   Text success color
      #
      #   @return [String, nil]
      optional :text_success, String, nil?: true

      # @!method initialize(bg_primary: nil, bg_secondary: nil, border_primary: nil, border_secondary: nil, button_primary: nil, button_primary_hover: nil, button_secondary: nil, button_secondary_hover: nil, button_text_primary: nil, button_text_secondary: nil, input_focus_border: nil, text_error: nil, text_placeholder: nil, text_primary: nil, text_secondary: nil, text_success: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ThemeModeConfig} for more details.
      #
      #   Color configuration for a single theme mode (light or dark).
      #
      #   All color fields accept standard CSS color formats:
      #
      #   - Hex: `#fff`, `#ffffff`, `#ffffffff` (with or without # prefix)
      #   - RGB/RGBA: `rgb(255, 255, 255)`, `rgba(255, 255, 255, 0.5)`
      #   - HSL/HSLA: `hsl(120, 100%, 50%)`, `hsla(120, 100%, 50%, 0.5)`
      #   - Named colors: `red`, `blue`, `transparent`, etc.
      #   - Advanced: `hwb()`, `lab()`, `lch()`, `oklab()`, `oklch()`, `color()`
      #
      #   @param bg_primary [String, nil] Background primary color
      #
      #   @param bg_secondary [String, nil] Background secondary color
      #
      #   @param border_primary [String, nil] Border primary color
      #
      #   @param border_secondary [String, nil] Border secondary color
      #
      #   @param button_primary [String, nil] Primary button background color
      #
      #   @param button_primary_hover [String, nil] Primary button hover color
      #
      #   @param button_secondary [String, nil] Secondary button background color
      #
      #   @param button_secondary_hover [String, nil] Secondary button hover color
      #
      #   @param button_text_primary [String, nil] Primary button text color
      #
      #   @param button_text_secondary [String, nil] Secondary button text color
      #
      #   @param input_focus_border [String, nil] Input focus border color
      #
      #   @param text_error [String, nil] Text error color
      #
      #   @param text_placeholder [String, nil] Text placeholder color
      #
      #   @param text_primary [String, nil] Text primary color
      #
      #   @param text_secondary [String, nil] Text secondary color
      #
      #   @param text_success [String, nil] Text success color
    end
  end
end
