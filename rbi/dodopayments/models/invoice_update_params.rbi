# typed: strong

module Dodopayments
  module Models
    class InvoiceUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::InvoiceUpdateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :invoice_id

      sig { returns(String) }
      attr_accessor :if_match

      # The billing address of an invoice request.
      sig do
        returns(T.nilable(Dodopayments::InvoiceUpdateParams::BillingAddress))
      end
      attr_reader :billing_address

      sig do
        params(
          billing_address:
            T.nilable(Dodopayments::InvoiceUpdateParams::BillingAddress::OrHash)
        ).void
      end
      attr_writer :billing_address

      # 10 addresses or fewer.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :cc_emails

      sig { returns(T.nilable(Dodopayments::CollectionMethod::OrSymbol)) }
      attr_accessor :collection_method

      sig { returns(T.nilable(Dodopayments::Currency::OrSymbol)) }
      attr_accessor :currency

      sig { returns(T.nilable(String)) }
      attr_accessor :customer_email

      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      # 20 codes or fewer.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :discount_ids

      sig { returns(T.nilable(Time)) }
      attr_accessor :due_at

      # The reminder override of one invoice. The business settings fill the other
      # dunning values.
      sig { returns(T.nilable(Dodopayments::InvoiceUpdateParams::Dunning)) }
      attr_reader :dunning

      sig do
        params(
          dunning: T.nilable(Dodopayments::InvoiceUpdateParams::Dunning::OrHash)
        ).void
      end
      attr_writer :dunning

      # 1 to 50 items.
      sig do
        returns(
          T.nilable(
            T::Array[
              T.any(
                Dodopayments::InvoiceUpdateParams::Item::CustomItem,
                Dodopayments::InvoiceUpdateParams::Item::ProductItem
              )
            ]
          )
        )
      end
      attr_accessor :items

      sig { returns(T.nilable(String)) }
      attr_accessor :memo

      # Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
      sig do
        returns(
          T.nilable(T::Hash[Symbol, Dodopayments::MetadataItem::Variants])
        )
      end
      attr_accessor :metadata

      sig do
        returns(
          T.nilable(
            T.any(
              Dodopayments::InvoiceUpdateParams::PaymentTerms::DueOnReceipt,
              Dodopayments::InvoiceUpdateParams::PaymentTerms::Net
            )
          )
        )
      end
      attr_accessor :payment_terms

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :review_required

      sig { returns(T.nilable(String)) }
      attr_accessor :tax_id

      sig do
        params(
          invoice_id: String,
          if_match: String,
          billing_address:
            T.nilable(
              Dodopayments::InvoiceUpdateParams::BillingAddress::OrHash
            ),
          cc_emails: T.nilable(T::Array[String]),
          collection_method:
            T.nilable(Dodopayments::CollectionMethod::OrSymbol),
          currency: T.nilable(Dodopayments::Currency::OrSymbol),
          customer_email: T.nilable(String),
          customer_id: T.nilable(String),
          discount_ids: T.nilable(T::Array[String]),
          due_at: T.nilable(Time),
          dunning:
            T.nilable(Dodopayments::InvoiceUpdateParams::Dunning::OrHash),
          items:
            T.nilable(
              T::Array[
                T.any(
                  Dodopayments::InvoiceUpdateParams::Item::CustomItem::OrHash,
                  Dodopayments::InvoiceUpdateParams::Item::ProductItem::OrHash
                )
              ]
            ),
          memo: T.nilable(String),
          metadata:
            T.nilable(T::Hash[Symbol, Dodopayments::MetadataItem::Variants]),
          payment_terms:
            T.nilable(
              T.any(
                Dodopayments::InvoiceUpdateParams::PaymentTerms::DueOnReceipt::OrHash,
                Dodopayments::InvoiceUpdateParams::PaymentTerms::Net::OrHash
              )
            ),
          review_required: T.nilable(T::Boolean),
          tax_id: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        invoice_id:,
        if_match:,
        # The billing address of an invoice request.
        billing_address: nil,
        # 10 addresses or fewer.
        cc_emails: nil,
        collection_method: nil,
        currency: nil,
        customer_email: nil,
        customer_id: nil,
        # 20 codes or fewer.
        discount_ids: nil,
        due_at: nil,
        # The reminder override of one invoice. The business settings fill the other
        # dunning values.
        dunning: nil,
        # 1 to 50 items.
        items: nil,
        memo: nil,
        # Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
        metadata: nil,
        payment_terms: nil,
        review_required: nil,
        tax_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            invoice_id: String,
            if_match: String,
            billing_address:
              T.nilable(Dodopayments::InvoiceUpdateParams::BillingAddress),
            cc_emails: T.nilable(T::Array[String]),
            collection_method:
              T.nilable(Dodopayments::CollectionMethod::OrSymbol),
            currency: T.nilable(Dodopayments::Currency::OrSymbol),
            customer_email: T.nilable(String),
            customer_id: T.nilable(String),
            discount_ids: T.nilable(T::Array[String]),
            due_at: T.nilable(Time),
            dunning: T.nilable(Dodopayments::InvoiceUpdateParams::Dunning),
            items:
              T.nilable(
                T::Array[
                  T.any(
                    Dodopayments::InvoiceUpdateParams::Item::CustomItem,
                    Dodopayments::InvoiceUpdateParams::Item::ProductItem
                  )
                ]
              ),
            memo: T.nilable(String),
            metadata:
              T.nilable(T::Hash[Symbol, Dodopayments::MetadataItem::Variants]),
            payment_terms:
              T.nilable(
                T.any(
                  Dodopayments::InvoiceUpdateParams::PaymentTerms::DueOnReceipt,
                  Dodopayments::InvoiceUpdateParams::PaymentTerms::Net
                )
              ),
            review_required: T.nilable(T::Boolean),
            tax_id: T.nilable(String),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      class BillingAddress < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::InvoiceUpdateParams::BillingAddress,
              Dodopayments::Internal::AnyHash
            )
          end

        # Two-letter ISO country code (ISO 3166-1 alpha-2)
        sig { returns(Dodopayments::CountryCode::OrSymbol) }
        attr_accessor :country

        sig { returns(T.nilable(String)) }
        attr_accessor :city

        sig { returns(T.nilable(String)) }
        attr_accessor :state

        sig { returns(T.nilable(String)) }
        attr_accessor :street

        sig { returns(T.nilable(String)) }
        attr_accessor :zipcode

        # The billing address of an invoice request.
        sig do
          params(
            country: Dodopayments::CountryCode::OrSymbol,
            city: T.nilable(String),
            state: T.nilable(String),
            street: T.nilable(String),
            zipcode: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Two-letter ISO country code (ISO 3166-1 alpha-2)
          country:,
          city: nil,
          state: nil,
          street: nil,
          zipcode: nil
        )
        end

        sig do
          override.returns(
            {
              country: Dodopayments::CountryCode::OrSymbol,
              city: T.nilable(String),
              state: T.nilable(String),
              street: T.nilable(String),
              zipcode: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class Dunning < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::InvoiceUpdateParams::Dunning,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :reminders_enabled

        # Days from the due date. A negative value sends the reminder before the due date.
        sig { returns(T.nilable(T::Array[Integer])) }
        attr_accessor :offsets_days

        # The reminder override of one invoice. The business settings fill the other
        # dunning values.
        sig do
          params(
            reminders_enabled: T::Boolean,
            offsets_days: T.nilable(T::Array[Integer])
          ).returns(T.attached_class)
        end
        def self.new(
          reminders_enabled:,
          # Days from the due date. A negative value sends the reminder before the due date.
          offsets_days: nil
        )
        end

        sig do
          override.returns(
            {
              reminders_enabled: T::Boolean,
              offsets_days: T.nilable(T::Array[Integer])
            }
          )
        end
        def to_hash
        end
      end

      # A line that exists only on this invoice.
      module Item
        extend Dodopayments::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Dodopayments::InvoiceUpdateParams::Item::CustomItem,
              Dodopayments::InvoiceUpdateParams::Item::ProductItem
            )
          end

        class CustomItem < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::InvoiceUpdateParams::Item::CustomItem,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :description

          sig { returns(Symbol) }
          attr_accessor :kind

          # Represents the different categories of taxation applicable to various products
          # and services.
          sig { returns(Dodopayments::TaxCategory::OrSymbol) }
          attr_accessor :tax_category

          # The price in the smallest currency unit.
          sig { returns(Integer) }
          attr_accessor :unit_amount

          # The default is 1.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :quantity

          # A line that exists only on this invoice.
          sig do
            params(
              description: String,
              tax_category: Dodopayments::TaxCategory::OrSymbol,
              unit_amount: Integer,
              quantity: T.nilable(Integer),
              kind: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            description:,
            # Represents the different categories of taxation applicable to various products
            # and services.
            tax_category:,
            # The price in the smallest currency unit.
            unit_amount:,
            # The default is 1.
            quantity: nil,
            kind: :custom
          )
          end

          sig do
            override.returns(
              {
                description: String,
                kind: Symbol,
                tax_category: Dodopayments::TaxCategory::OrSymbol,
                unit_amount: Integer,
                quantity: T.nilable(Integer)
              }
            )
          end
          def to_hash
          end
        end

        class ProductItem < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::InvoiceUpdateParams::Item::ProductItem,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :product_id

          sig { returns(Integer) }
          attr_accessor :quantity

          sig { returns(T.nilable(T::Array[Dodopayments::AttachAddon])) }
          attr_accessor :addons

          sig do
            params(
              product_id: String,
              quantity: Integer,
              addons: T.nilable(T::Array[Dodopayments::AttachAddon::OrHash])
            ).returns(T.attached_class)
          end
          def self.new(product_id:, quantity:, addons: nil)
          end

          sig do
            override.returns(
              {
                product_id: String,
                quantity: Integer,
                addons: T.nilable(T::Array[Dodopayments::AttachAddon])
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[Dodopayments::InvoiceUpdateParams::Item::Variants]
          )
        end
        def self.variants
        end
      end

      module PaymentTerms
        extend Dodopayments::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Dodopayments::InvoiceUpdateParams::PaymentTerms::DueOnReceipt,
              Dodopayments::InvoiceUpdateParams::PaymentTerms::Net
            )
          end

        class DueOnReceipt < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::InvoiceUpdateParams::PaymentTerms::DueOnReceipt,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :type

          sig { params(type: Symbol).returns(T.attached_class) }
          def self.new(type: :due_on_receipt)
          end

          sig { override.returns({ type: Symbol }) }
          def to_hash
          end
        end

        class Net < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::InvoiceUpdateParams::PaymentTerms::Net,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :days

          sig { returns(Symbol) }
          attr_accessor :type

          sig { params(days: Integer, type: Symbol).returns(T.attached_class) }
          def self.new(days:, type: :net)
          end

          sig { override.returns({ days: Integer, type: Symbol }) }
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[Dodopayments::InvoiceUpdateParams::PaymentTerms::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
