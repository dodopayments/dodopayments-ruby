# typed: strong

module Dodopayments
  module Models
    class ThemeConfig < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::ThemeConfig, Dodopayments::Internal::AnyHash)
        end

      # Dark mode color configuration
      sig { returns(T.nilable(Dodopayments::ThemeModeConfig)) }
      attr_reader :dark

      sig do
        params(dark: T.nilable(Dodopayments::ThemeModeConfig::OrHash)).void
      end
      attr_writer :dark

      # URL for the primary font
      sig { returns(T.nilable(String)) }
      attr_accessor :font_primary_url

      # URL for the secondary font
      sig { returns(T.nilable(String)) }
      attr_accessor :font_secondary_url

      # Font size for the checkout UI
      sig { returns(T.nilable(Dodopayments::ThemeConfig::FontSize::OrSymbol)) }
      attr_accessor :font_size

      # Font weight for the checkout UI
      sig do
        returns(T.nilable(Dodopayments::ThemeConfig::FontWeight::OrSymbol))
      end
      attr_accessor :font_weight

      # Light mode color configuration
      sig { returns(T.nilable(Dodopayments::ThemeModeConfig)) }
      attr_reader :light

      sig do
        params(light: T.nilable(Dodopayments::ThemeModeConfig::OrHash)).void
      end
      attr_writer :light

      # Custom text for the pay button (e.g., "Complete Purchase", "Subscribe Now")
      sig { returns(T.nilable(String)) }
      attr_accessor :pay_button_text

      # Border radius for UI elements (e.g., "4px", "0.5rem", "8px")
      sig { returns(T.nilable(String)) }
      attr_accessor :radius

      # Custom theme configuration with colors for light and dark modes.
      sig do
        params(
          dark: T.nilable(Dodopayments::ThemeModeConfig::OrHash),
          font_primary_url: T.nilable(String),
          font_secondary_url: T.nilable(String),
          font_size: T.nilable(Dodopayments::ThemeConfig::FontSize::OrSymbol),
          font_weight:
            T.nilable(Dodopayments::ThemeConfig::FontWeight::OrSymbol),
          light: T.nilable(Dodopayments::ThemeModeConfig::OrHash),
          pay_button_text: T.nilable(String),
          radius: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Dark mode color configuration
        dark: nil,
        # URL for the primary font
        font_primary_url: nil,
        # URL for the secondary font
        font_secondary_url: nil,
        # Font size for the checkout UI
        font_size: nil,
        # Font weight for the checkout UI
        font_weight: nil,
        # Light mode color configuration
        light: nil,
        # Custom text for the pay button (e.g., "Complete Purchase", "Subscribe Now")
        pay_button_text: nil,
        # Border radius for UI elements (e.g., "4px", "0.5rem", "8px")
        radius: nil
      )
      end

      sig do
        override.returns(
          {
            dark: T.nilable(Dodopayments::ThemeModeConfig),
            font_primary_url: T.nilable(String),
            font_secondary_url: T.nilable(String),
            font_size: T.nilable(Dodopayments::ThemeConfig::FontSize::OrSymbol),
            font_weight:
              T.nilable(Dodopayments::ThemeConfig::FontWeight::OrSymbol),
            light: T.nilable(Dodopayments::ThemeModeConfig),
            pay_button_text: T.nilable(String),
            radius: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # Font size for the checkout UI
      module FontSize
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dodopayments::ThemeConfig::FontSize) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        XS = T.let(:xs, Dodopayments::ThemeConfig::FontSize::TaggedSymbol)
        SM = T.let(:sm, Dodopayments::ThemeConfig::FontSize::TaggedSymbol)
        MD = T.let(:md, Dodopayments::ThemeConfig::FontSize::TaggedSymbol)
        LG = T.let(:lg, Dodopayments::ThemeConfig::FontSize::TaggedSymbol)
        XL = T.let(:xl, Dodopayments::ThemeConfig::FontSize::TaggedSymbol)
        FONT_SIZE_2XL =
          T.let(:"2xl", Dodopayments::ThemeConfig::FontSize::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Dodopayments::ThemeConfig::FontSize::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Font weight for the checkout UI
      module FontWeight
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dodopayments::ThemeConfig::FontWeight) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NORMAL =
          T.let(:normal, Dodopayments::ThemeConfig::FontWeight::TaggedSymbol)
        MEDIUM =
          T.let(:medium, Dodopayments::ThemeConfig::FontWeight::TaggedSymbol)
        BOLD = T.let(:bold, Dodopayments::ThemeConfig::FontWeight::TaggedSymbol)
        EXTRA_BOLD =
          T.let(:extraBold, Dodopayments::ThemeConfig::FontWeight::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Dodopayments::ThemeConfig::FontWeight::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
