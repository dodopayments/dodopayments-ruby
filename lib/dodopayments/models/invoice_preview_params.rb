# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Invoices#preview
    class InvoicePreviewParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute collection_method
      #
      #   @return [Symbol, Dodopayments::Models::CollectionMethod]
      required :collection_method, enum: -> { Dodopayments::CollectionMethod }

      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Models::Currency]
      required :currency, enum: -> { Dodopayments::Currency }

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute items
      #   1 to 50 items.
      #
      #   @return [Array<Dodopayments::Models::InvoicePreviewParams::Item::CustomItem, Dodopayments::Models::InvoicePreviewParams::Item::ProductItem>]
      required :items,
               -> { Dodopayments::Internal::Type::ArrayOf[union: Dodopayments::InvoicePreviewParams::Item] }

      # @!attribute format_
      #   The preview body. `json` returns the invoice JSON. `pdf` returns the PDF with a
      #   draft mark. `email` returns the HTML of the invoice email. A preview saves no
      #   row.
      #
      #   @return [Symbol, Dodopayments::Models::InvoicePreviewParams::Format, nil]
      optional :format_, enum: -> { Dodopayments::InvoicePreviewParams::Format }

      # @!attribute billing_address
      #   The billing address of an invoice request.
      #
      #   @return [Dodopayments::Models::InvoicePreviewParams::BillingAddress, nil]
      optional :billing_address, -> { Dodopayments::InvoicePreviewParams::BillingAddress }, nil?: true

      # @!attribute cc_emails
      #   10 addresses or fewer.
      #
      #   @return [Array<String>, nil]
      optional :cc_emails, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute customer_email
      #   The customer email is used when this is not set.
      #
      #   @return [String, nil]
      optional :customer_email, String, nil?: true

      # @!attribute discount_ids
      #   20 codes or fewer.
      #
      #   @return [Array<String>, nil]
      optional :discount_ids, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute due_at
      #   A custom due date. Do not send it with `payment_terms`.
      #
      #   @return [Time, nil]
      optional :due_at, Time, nil?: true

      # @!attribute dunning
      #   The reminder override of one invoice. The business settings fill the other
      #   dunning values.
      #
      #   @return [Dodopayments::Models::InvoicePreviewParams::Dunning, nil]
      optional :dunning, -> { Dodopayments::InvoicePreviewParams::Dunning }, nil?: true

      # @!attribute memo
      #
      #   @return [String, nil]
      optional :memo, String, nil?: true

      # @!attribute metadata
      #   Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
      #
      #   @return [Hash{Symbol=>String, Float, Boolean}, nil]
      optional :metadata, -> { Dodopayments::Internal::Type::HashOf[union: Dodopayments::MetadataItem] }

      # @!attribute payment_terms
      #   Do not send it with `due_at`.
      #
      #   @return [Dodopayments::Models::InvoicePreviewParams::PaymentTerms::Type, Dodopayments::Models::InvoicePreviewParams::PaymentTerms::UnionMember1, nil]
      optional :payment_terms, union: -> { Dodopayments::InvoicePreviewParams::PaymentTerms }, nil?: true

      # @!attribute review_required
      #   `true` keeps a renewal draft for review before it finalises.
      #
      #   @return [Boolean, nil]
      optional :review_required, Dodopayments::Internal::Type::Boolean

      # @!attribute tax_id
      #
      #   @return [String, nil]
      optional :tax_id, String, nil?: true

      # @!method initialize(collection_method:, currency:, customer_id:, items:, format_: nil, billing_address: nil, cc_emails: nil, customer_email: nil, discount_ids: nil, due_at: nil, dunning: nil, memo: nil, metadata: nil, payment_terms: nil, review_required: nil, tax_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::InvoicePreviewParams} for more details.
      #
      #   @param collection_method [Symbol, Dodopayments::Models::CollectionMethod]
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency]
      #
      #   @param customer_id [String]
      #
      #   @param items [Array<Dodopayments::Models::InvoicePreviewParams::Item::CustomItem, Dodopayments::Models::InvoicePreviewParams::Item::ProductItem>] 1 to 50 items.
      #
      #   @param format_ [Symbol, Dodopayments::Models::InvoicePreviewParams::Format] The preview body. `json` returns the invoice JSON. `pdf` returns the PDF with a
      #
      #   @param billing_address [Dodopayments::Models::InvoicePreviewParams::BillingAddress, nil] The billing address of an invoice request.
      #
      #   @param cc_emails [Array<String>, nil] 10 addresses or fewer.
      #
      #   @param customer_email [String, nil] The customer email is used when this is not set.
      #
      #   @param discount_ids [Array<String>, nil] 20 codes or fewer.
      #
      #   @param due_at [Time, nil] A custom due date. Do not send it with `payment_terms`.
      #
      #   @param dunning [Dodopayments::Models::InvoicePreviewParams::Dunning, nil] The reminder override of one invoice. The business settings fill the other dunni
      #
      #   @param memo [String, nil]
      #
      #   @param metadata [Hash{Symbol=>String, Float, Boolean}] Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
      #
      #   @param payment_terms [Dodopayments::Models::InvoicePreviewParams::PaymentTerms::Type, Dodopayments::Models::InvoicePreviewParams::PaymentTerms::UnionMember1, nil] Do not send it with `due_at`.
      #
      #   @param review_required [Boolean] `true` keeps a renewal draft for review before it finalises.
      #
      #   @param tax_id [String, nil]
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      # A line that exists only on this invoice.
      module Item
        extend Dodopayments::Internal::Type::Union

        # A line that exists only on this invoice.
        variant -> { Dodopayments::InvoicePreviewParams::Item::CustomItem }

        variant -> { Dodopayments::InvoicePreviewParams::Item::ProductItem }

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
          #   {Dodopayments::Models::InvoicePreviewParams::Item::CustomItem} for more details.
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
        #   @return [Array(Dodopayments::Models::InvoicePreviewParams::Item::CustomItem, Dodopayments::Models::InvoicePreviewParams::Item::ProductItem)]
      end

      # The preview body. `json` returns the invoice JSON. `pdf` returns the PDF with a
      # draft mark. `email` returns the HTML of the invoice email. A preview saves no
      # row.
      module Format
        extend Dodopayments::Internal::Type::Enum

        JSON = :json
        PDF = :pdf
        EMAIL = :email

        # @!method self.values
        #   @return [Array<Symbol>]
      end

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
        #   {Dodopayments::Models::InvoicePreviewParams::Dunning} for more details.
        #
        #   The reminder override of one invoice. The business settings fill the other
        #   dunning values.
        #
        #   @param reminders_enabled [Boolean]
        #
        #   @param offsets_days [Array<Integer>, nil] Days from the due date. A negative value sends the reminder before the due date.
      end

      # Do not send it with `due_at`.
      module PaymentTerms
        extend Dodopayments::Internal::Type::Union

        variant -> { Dodopayments::InvoicePreviewParams::PaymentTerms::Type }

        variant -> { Dodopayments::InvoicePreviewParams::PaymentTerms::UnionMember1 }

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
        #   @return [Array(Dodopayments::Models::InvoicePreviewParams::PaymentTerms::Type, Dodopayments::Models::InvoicePreviewParams::PaymentTerms::UnionMember1)]
      end
    end
  end
end
