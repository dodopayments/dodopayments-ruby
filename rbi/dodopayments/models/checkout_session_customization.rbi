# typed: strong

module Dodopayments
  module Models
    class CheckoutSessionCustomization < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CheckoutSessionCustomization,
            Dodopayments::Internal::AnyHash
          )
        end

      # Force the checkout interface to render in a specific language (e.g. `en`, `es`)
      sig { returns(T.nilable(String)) }
      attr_accessor :force_language

      # Show on demand tag
      #
      # Default is true
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_on_demand_tag

      sig { params(show_on_demand_tag: T::Boolean).void }
      attr_writer :show_on_demand_tag

      # Show order details by default
      #
      # Default is true
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_order_details

      sig { params(show_order_details: T::Boolean).void }
      attr_writer :show_order_details

      # Theme of the page (determines which mode - light/dark/system - to use)
      #
      # Default is `System`.
      sig do
        returns(
          T.nilable(Dodopayments::CheckoutSessionCustomization::Theme::OrSymbol)
        )
      end
      attr_reader :theme

      sig do
        params(
          theme: Dodopayments::CheckoutSessionCustomization::Theme::OrSymbol
        ).void
      end
      attr_writer :theme

      # Optional custom theme configuration with colors for light and dark modes
      sig { returns(T.nilable(Dodopayments::ThemeConfig)) }
      attr_reader :theme_config

      sig do
        params(theme_config: T.nilable(Dodopayments::ThemeConfig::OrHash)).void
      end
      attr_writer :theme_config

      sig do
        params(
          force_language: T.nilable(String),
          show_on_demand_tag: T::Boolean,
          show_order_details: T::Boolean,
          theme: Dodopayments::CheckoutSessionCustomization::Theme::OrSymbol,
          theme_config: T.nilable(Dodopayments::ThemeConfig::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # Force the checkout interface to render in a specific language (e.g. `en`, `es`)
        force_language: nil,
        # Show on demand tag
        #
        # Default is true
        show_on_demand_tag: nil,
        # Show order details by default
        #
        # Default is true
        show_order_details: nil,
        # Theme of the page (determines which mode - light/dark/system - to use)
        #
        # Default is `System`.
        theme: nil,
        # Optional custom theme configuration with colors for light and dark modes
        theme_config: nil
      )
      end

      sig do
        override.returns(
          {
            force_language: T.nilable(String),
            show_on_demand_tag: T::Boolean,
            show_order_details: T::Boolean,
            theme: Dodopayments::CheckoutSessionCustomization::Theme::OrSymbol,
            theme_config: T.nilable(Dodopayments::ThemeConfig)
          }
        )
      end
      def to_hash
      end

      # Theme of the page (determines which mode - light/dark/system - to use)
      #
      # Default is `System`.
      module Theme
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::CheckoutSessionCustomization::Theme)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DARK =
          T.let(
            :dark,
            Dodopayments::CheckoutSessionCustomization::Theme::TaggedSymbol
          )
        LIGHT =
          T.let(
            :light,
            Dodopayments::CheckoutSessionCustomization::Theme::TaggedSymbol
          )
        SYSTEM =
          T.let(
            :system,
            Dodopayments::CheckoutSessionCustomization::Theme::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::CheckoutSessionCustomization::Theme::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
