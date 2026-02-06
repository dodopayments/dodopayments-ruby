# typed: strong

module Dodopayments
  module Models
    class ThemeModeConfig < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::ThemeModeConfig, Dodopayments::Internal::AnyHash)
        end

      # Background primary color
      #
      # Examples: `"#ffffff"`, `"rgb(255, 255, 255)"`, `"white"`
      sig { returns(T.nilable(String)) }
      attr_accessor :bg_primary

      # Background secondary color
      sig { returns(T.nilable(String)) }
      attr_accessor :bg_secondary

      # Border primary color
      sig { returns(T.nilable(String)) }
      attr_accessor :border_primary

      # Border secondary color
      sig { returns(T.nilable(String)) }
      attr_accessor :border_secondary

      # Primary button background color
      sig { returns(T.nilable(String)) }
      attr_accessor :button_primary

      # Primary button hover color
      sig { returns(T.nilable(String)) }
      attr_accessor :button_primary_hover

      # Secondary button background color
      sig { returns(T.nilable(String)) }
      attr_accessor :button_secondary

      # Secondary button hover color
      sig { returns(T.nilable(String)) }
      attr_accessor :button_secondary_hover

      # Primary button text color
      sig { returns(T.nilable(String)) }
      attr_accessor :button_text_primary

      # Secondary button text color
      sig { returns(T.nilable(String)) }
      attr_accessor :button_text_secondary

      # Input focus border color
      sig { returns(T.nilable(String)) }
      attr_accessor :input_focus_border

      # Text error color
      sig { returns(T.nilable(String)) }
      attr_accessor :text_error

      # Text placeholder color
      sig { returns(T.nilable(String)) }
      attr_accessor :text_placeholder

      # Text primary color
      sig { returns(T.nilable(String)) }
      attr_accessor :text_primary

      # Text secondary color
      sig { returns(T.nilable(String)) }
      attr_accessor :text_secondary

      # Text success color
      sig { returns(T.nilable(String)) }
      attr_accessor :text_success

      # Color configuration for a single theme mode (light or dark).
      #
      # All color fields accept standard CSS color formats:
      #
      # - Hex: `#fff`, `#ffffff`, `#ffffffff` (with or without # prefix)
      # - RGB/RGBA: `rgb(255, 255, 255)`, `rgba(255, 255, 255, 0.5)`
      # - HSL/HSLA: `hsl(120, 100%, 50%)`, `hsla(120, 100%, 50%, 0.5)`
      # - Named colors: `red`, `blue`, `transparent`, etc.
      # - Advanced: `hwb()`, `lab()`, `lch()`, `oklab()`, `oklch()`, `color()`
      sig do
        params(
          bg_primary: T.nilable(String),
          bg_secondary: T.nilable(String),
          border_primary: T.nilable(String),
          border_secondary: T.nilable(String),
          button_primary: T.nilable(String),
          button_primary_hover: T.nilable(String),
          button_secondary: T.nilable(String),
          button_secondary_hover: T.nilable(String),
          button_text_primary: T.nilable(String),
          button_text_secondary: T.nilable(String),
          input_focus_border: T.nilable(String),
          text_error: T.nilable(String),
          text_placeholder: T.nilable(String),
          text_primary: T.nilable(String),
          text_secondary: T.nilable(String),
          text_success: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Background primary color
        #
        # Examples: `"#ffffff"`, `"rgb(255, 255, 255)"`, `"white"`
        bg_primary: nil,
        # Background secondary color
        bg_secondary: nil,
        # Border primary color
        border_primary: nil,
        # Border secondary color
        border_secondary: nil,
        # Primary button background color
        button_primary: nil,
        # Primary button hover color
        button_primary_hover: nil,
        # Secondary button background color
        button_secondary: nil,
        # Secondary button hover color
        button_secondary_hover: nil,
        # Primary button text color
        button_text_primary: nil,
        # Secondary button text color
        button_text_secondary: nil,
        # Input focus border color
        input_focus_border: nil,
        # Text error color
        text_error: nil,
        # Text placeholder color
        text_placeholder: nil,
        # Text primary color
        text_primary: nil,
        # Text secondary color
        text_secondary: nil,
        # Text success color
        text_success: nil
      )
      end

      sig do
        override.returns(
          {
            bg_primary: T.nilable(String),
            bg_secondary: T.nilable(String),
            border_primary: T.nilable(String),
            border_secondary: T.nilable(String),
            button_primary: T.nilable(String),
            button_primary_hover: T.nilable(String),
            button_secondary: T.nilable(String),
            button_secondary_hover: T.nilable(String),
            button_text_primary: T.nilable(String),
            button_text_secondary: T.nilable(String),
            input_focus_border: T.nilable(String),
            text_error: T.nilable(String),
            text_placeholder: T.nilable(String),
            text_primary: T.nilable(String),
            text_secondary: T.nilable(String),
            text_success: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
