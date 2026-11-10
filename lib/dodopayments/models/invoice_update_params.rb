# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Invoices#update
    class InvoiceUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute invoice_id
      #
      #   @return [String]
      required :invoice_id, String

      # @!attribute if_match
      #
      #   @return [String]
      required :if_match, String

      # @!attribute billing_address
      #   The billing address of an invoice request.
      #
      #   @return [Dodopayments::Models::InvoiceUpdateParams::BillingAddress, nil]
      optional :billing_address, -> { Dodopayments::InvoiceUpdateParams::BillingAddress }, nil?: true

      # @!attribute cc_emails
      #   10 addresses or fewer.
      #
      #   @return [Array<String>, nil]
      optional :cc_emails, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute collection_method
      #
      #   @return [Symbol, Dodopayments::Models::CollectionMethod, nil]
      optional :collection_method, enum: -> { Dodopayments::CollectionMethod }, nil?: true

      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Models::Currency, nil]
      optional :currency, enum: -> { Dodopayments::Currency }, nil?: true

      # @!attribute customer_email
      #
      #   @return [String, nil]
      optional :customer_email, String, nil?: true

      # @!attribute customer_id
      #
      #   @return [String, nil]
      optional :customer_id, String, nil?: true

      # @!attribute discount_ids
      #   20 codes or fewer.
      #
      #   @return [Array<String>, nil]
      optional :discount_ids, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute due_at
      #
      #   @return [Time, nil]
      optional :due_at, Time, nil?: true

      # @!attribute dunning
      #   The reminder override of one invoice. The business settings fill the other
      #   dunning values.
      #
      #   @return [Dodopayments::Models::InvoiceUpdateParams::Dunning, nil]
      optional :dunning, -> { Dodopayments::InvoiceUpdateParams::Dunning }, nil?: true

      # @!attribute items
      #   1 to 50 items.
      #
      #   @return [Array<Dodopayments::Models::InvoiceUpdateParams::Item::CustomItem, Dodopayments::Models::InvoiceUpdateParams::Item::ProductItem>, nil]
      optional :items,
               -> { Dodopayments::Internal::Type::ArrayOf[union: Dodopayments::InvoiceUpdateParams::Item] },
               nil?: true

      # @!attribute memo
      #
      #   @return [String, nil]
      optional :memo, String, nil?: true

      # @!attribute metadata
      #   Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
      #
      #   @return [Hash{Symbol=>String, Float, Boolean}, nil]
      optional :metadata,
               -> { Dodopayments::Internal::Type::HashOf[union: Dodopayments::MetadataItem] },
               nil?: true

      # @!attribute payment_terms
      #
      #   @return [Dodopayments::Models::InvoiceUpdateParams::PaymentTerms::Type, Dodopayments::Models::InvoiceUpdateParams::PaymentTerms::UnionMember1, nil]
      optional :payment_terms, union: -> { Dodopayments::InvoiceUpdateParams::PaymentTerms }, nil?: true

      # @!attribute review_required
      #
      #   @return [Boolean, nil]
      optional :review_required, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute tax_id
      #
      #   @return [String, nil]
      optional :tax_id, String, nil?: true

      # @!method initialize(invoice_id:, if_match:, billing_address: nil, cc_emails: nil, collection_method: nil, currency: nil, customer_email: nil, customer_id: nil, discount_ids: nil, due_at: nil, dunning: nil, items: nil, memo: nil, metadata: nil, payment_terms: nil, review_required: nil, tax_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::InvoiceUpdateParams} for more details.
      #
      #   @param invoice_id [String]
      #
      #   @param if_match [String]
      #
      #   @param billing_address [Dodopayments::Models::InvoiceUpdateParams::BillingAddress, nil] The billing address of an invoice request.
      #
      #   @param cc_emails [Array<String>, nil] 10 addresses or fewer.
      #
      #   @param collection_method [Symbol, Dodopayments::Models::CollectionMethod, nil]
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency, nil]
      #
      #   @param customer_email [String, nil]
      #
      #   @param customer_id [String, nil]
      #
      #   @param discount_ids [Array<String>, nil] 20 codes or fewer.
      #
      #   @param due_at [Time, nil]
      #
      #   @param dunning [Dodopayments::Models::InvoiceUpdateParams::Dunning, nil] The reminder override of one invoice. The business settings fill the other dunni
      #
      #   @param items [Array<Dodopayments::Models::InvoiceUpdateParams::Item::CustomItem, Dodopayments::Models::InvoiceUpdateParams::Item::ProductItem>, nil] 1 to 50 items.
      #
      #   @param memo [String, nil]
      #
      #   @param metadata [Hash{Symbol=>String, Float, Boolean}, nil] Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
      #
      #   @param payment_terms [Dodopayments::Models::InvoiceUpdateParams::PaymentTerms::Type, Dodopayments::Models::InvoiceUpdateParams::PaymentTerms::UnionMember1, nil]
      #
      #   @param review_required [Boolean, nil]
      #
      #   @param tax_id [String, nil]
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      class BillingAddress < Dodopayments::Internal::Type::BaseModel
        # @!attribute country
        #   Two-letter ISO country code (ISO 3166-1 alpha-2)
        #
        #   @return [Symbol, Dodopayments::Models::CountryCode]
        required :country, enum: -> { Dodopayments::CountryCode }

        # @!attribute city
        #
        #   @return [String, nil]
        optional :city, String, nil?: true

        # @!attribute state
        #
        #   @return [String, nil]
        optional :state, String, nil?: true

        # @!attribute street
        #
        #   @return [String, nil]
        optional :street, String, nil?: true

        # @!attribute zipcode
        #
        #   @return [String, nil]
        optional :zipcode, String, nil?: true

        # @!method initialize(country:, city: nil, state: nil, street: nil, zipcode: nil)
        #   The billing address of an invoice request.
        #
        #   @param country [Symbol, Dodopayments::Models::CountryCode] Two-letter ISO country code (ISO 3166-1 alpha-2)
        #
        #   @param city [String, nil]
        #
        #   @param state [String, nil]
        #
        #   @param street [String, nil]
        #
        #   @param zipcode [String, nil]
      end

      class Dunning < Dodopayments::Internal::Type::BaseModel
        # @!attribute reminders_enabled
        #
        #   @return [Boolean]
        required :reminders_enabled, Dodopayments::Internal::Type::Boolean

        # @!attribute offsets_days
        #   Days from the due date. A negative value sends the reminder before the due date.
        #
        #   @return [Array<Integer>, nil]
        optional :offsets_days, Dodopayments::Internal::Type::ArrayOf[Integer], nil?: true

        # @!method initialize(reminders_enabled:, offsets_days: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::InvoiceUpdateParams::Dunning} for more details.
        #
        #   The reminder override of one invoice. The business settings fill the other
        #   dunning values.
        #
        #   @param reminders_enabled [Boolean]
        #
        #   @param offsets_days [Array<Integer>, nil] Days from the due date. A negative value sends the reminder before the due date.
      end

      # A line that exists only on this invoice.
      module Item
        extend Dodopayments::Internal::Type::Union

        # A line that exists only on this invoice.
        variant -> { Dodopayments::InvoiceUpdateParams::Item::CustomItem }

        variant -> { Dodopayments::InvoiceUpdateParams::Item::ProductItem }

        class CustomItem < Dodopayments::Internal::Type::BaseModel
          # @!attribute description
          #
          #   @return [String]
          required :description, String

          # @!attribute kind
          #
          #   @return [Symbol, :custom]
          required :kind, const: :custom

          # @!attribute tax_category
          #   Represents the different categories of taxation applicable to various products
          #   and services.
          #
          #   @return [Symbol, Dodopayments::Models::TaxCategory]
          required :tax_category, enum: -> { Dodopayments::TaxCategory }

          # @!attribute unit_amount
          #   The price in the smallest currency unit.
          #
          #   @return [Integer]
          required :unit_amount, Integer

          # @!attribute quantity
          #   The default is 1.
          #
          #   @return [Integer, nil]
          optional :quantity, Integer, nil?: true

          # @!method initialize(description:, tax_category:, unit_amount:, quantity: nil, kind: :custom)
          #   Some parameter documentations has been truncated, see
          #   {Dodopayments::Models::InvoiceUpdateParams::Item::CustomItem} for more details.
          #
          #   A line that exists only on this invoice.
          #
          #   @param description [String]
          #
          #   @param tax_category [Symbol, Dodopayments::Models::TaxCategory] Represents the different categories of taxation applicable to various products a
          #
          #   @param unit_amount [Integer] The price in the smallest currency unit.
          #
          #   @param quantity [Integer, nil] The default is 1.
          #
          #   @param kind [Symbol, :custom]
        end

        class ProductItem < Dodopayments::Internal::Type::BaseModel
          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute quantity
          #
          #   @return [Integer]
          required :quantity, Integer

          # @!attribute addons
          #
          #   @return [Array<Dodopayments::Models::AttachAddon>, nil]
          optional :addons,
                   -> {
                     Dodopayments::Internal::Type::ArrayOf[Dodopayments::AttachAddon]
                   },
                   nil?: true

          # @!method initialize(product_id:, quantity:, addons: nil)
          #   @param product_id [String]
          #   @param quantity [Integer]
          #   @param addons [Array<Dodopayments::Models::AttachAddon>, nil]
        end

        # @!method self.variants
        #   @return [Array(Dodopayments::Models::InvoiceUpdateParams::Item::CustomItem, Dodopayments::Models::InvoiceUpdateParams::Item::ProductItem)]
      end

      module PaymentTerms
        extend Dodopayments::Internal::Type::Union

        variant -> { Dodopayments::InvoiceUpdateParams::PaymentTerms::Type }

        variant -> { Dodopayments::InvoiceUpdateParams::PaymentTerms::UnionMember1 }

        class Type < Dodopayments::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :due_on_receipt]
          required :type, const: :due_on_receipt

          # @!method initialize(type: :due_on_receipt)
          #   @param type [Symbol, :due_on_receipt]
        end

        class UnionMember1 < Dodopayments::Internal::Type::BaseModel
          # @!attribute days
          #
          #   @return [Integer]
          required :days, Integer

          # @!attribute type
          #
          #   @return [Symbol, :net]
          required :type, const: :net

          # @!method initialize(days:, type: :net)
          #   @param days [Integer]
          #   @param type [Symbol, :net]
        end

        # @!method self.variants
        #   @return [Array(Dodopayments::Models::InvoiceUpdateParams::PaymentTerms::Type, Dodopayments::Models::InvoiceUpdateParams::PaymentTerms::UnionMember1)]
      end
    end
  end
end
