# typed: strong

module Dodopayments
  module Models
    class InvoiceCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::InvoiceCreateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(Dodopayments::CollectionMethod::OrSymbol) }
      attr_accessor :collection_method

      sig { returns(Dodopayments::Currency::OrSymbol) }
      attr_accessor :currency

      sig { returns(String) }
      attr_accessor :customer_id

      # 1 to 50 items.
      sig do
        returns(
          T::Array[
            T.any(
              Dodopayments::InvoiceCreateParams::Item::CustomItem,
              Dodopayments::InvoiceCreateParams::Item::ProductItem
            )
          ]
        )
      end
      attr_accessor :items

      # The billing address of an invoice request.
      sig do
        returns(T.nilable(Dodopayments::InvoiceCreateParams::BillingAddress))
      end
      attr_reader :billing_address

      sig do
        params(
          billing_address:
            T.nilable(Dodopayments::InvoiceCreateParams::BillingAddress::OrHash)
        ).void
      end
      attr_writer :billing_address

      # 10 addresses or fewer.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :cc_emails

      # The customer email is used when this is not set.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_email

      # 20 codes or fewer.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :discount_ids

      # A custom due date. Do not send it with `payment_terms`.
      sig { returns(T.nilable(Time)) }
      attr_accessor :due_at

      # The reminder override of one invoice. The business settings fill the other
      # dunning values.
      sig { returns(T.nilable(Dodopayments::InvoiceCreateParams::Dunning)) }
      attr_reader :dunning

      sig do
        params(
          dunning: T.nilable(Dodopayments::InvoiceCreateParams::Dunning::OrHash)
        ).void
      end
      attr_writer :dunning

      sig { returns(T.nilable(String)) }
      attr_accessor :memo

      # Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
      sig do
        returns(
          T.nilable(T::Hash[Symbol, Dodopayments::MetadataItem::Variants])
        )
      end
      attr_reader :metadata

      sig do
        params(
          metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants]
        ).void
      end
      attr_writer :metadata

      # Do not send it with `due_at`.
      sig do
        returns(
          T.nilable(
            T.any(
              Dodopayments::InvoiceCreateParams::PaymentTerms::DueOnReceipt,
              Dodopayments::InvoiceCreateParams::PaymentTerms::Net
            )
          )
        )
      end
      attr_accessor :payment_terms

      # `true` keeps a renewal draft for review before it finalises.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :review_required

      sig { params(review_required: T::Boolean).void }
      attr_writer :review_required

      sig { returns(T.nilable(String)) }
      attr_accessor :tax_id

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          collection_method: Dodopayments::CollectionMethod::OrSymbol,
          currency: Dodopayments::Currency::OrSymbol,
          customer_id: String,
          items:
            T::Array[
              T.any(
                Dodopayments::InvoiceCreateParams::Item::CustomItem::OrHash,
                Dodopayments::InvoiceCreateParams::Item::ProductItem::OrHash
              )
            ],
          billing_address:
            T.nilable(
              Dodopayments::InvoiceCreateParams::BillingAddress::OrHash
            ),
          cc_emails: T.nilable(T::Array[String]),
          customer_email: T.nilable(String),
          discount_ids: T.nilable(T::Array[String]),
          due_at: T.nilable(Time),
          dunning:
            T.nilable(Dodopayments::InvoiceCreateParams::Dunning::OrHash),
          memo: T.nilable(String),
          metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants],
          payment_terms:
            T.nilable(
              T.any(
                Dodopayments::InvoiceCreateParams::PaymentTerms::DueOnReceipt::OrHash,
                Dodopayments::InvoiceCreateParams::PaymentTerms::Net::OrHash
              )
            ),
          review_required: T::Boolean,
          tax_id: T.nilable(String),
          idempotency_key: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        collection_method:,
        currency:,
        customer_id:,
        # 1 to 50 items.
        items:,
        # The billing address of an invoice request.
        billing_address: nil,
        # 10 addresses or fewer.
        cc_emails: nil,
        # The customer email is used when this is not set.
        customer_email: nil,
        # 20 codes or fewer.
        discount_ids: nil,
        # A custom due date. Do not send it with `payment_terms`.
        due_at: nil,
        # The reminder override of one invoice. The business settings fill the other
        # dunning values.
        dunning: nil,
        memo: nil,
        # Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
        metadata: nil,
        # Do not send it with `due_at`.
        payment_terms: nil,
        # `true` keeps a renewal draft for review before it finalises.
        review_required: nil,
        tax_id: nil,
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            collection_method: Dodopayments::CollectionMethod::OrSymbol,
            currency: Dodopayments::Currency::OrSymbol,
            customer_id: String,
            items:
              T::Array[
                T.any(
                  Dodopayments::InvoiceCreateParams::Item::CustomItem,
                  Dodopayments::InvoiceCreateParams::Item::ProductItem
                )
              ],
            billing_address:
              T.nilable(Dodopayments::InvoiceCreateParams::BillingAddress),
            cc_emails: T.nilable(T::Array[String]),
            customer_email: T.nilable(String),
            discount_ids: T.nilable(T::Array[String]),
            due_at: T.nilable(Time),
            dunning: T.nilable(Dodopayments::InvoiceCreateParams::Dunning),
            memo: T.nilable(String),
            metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants],
            payment_terms:
              T.nilable(
                T.any(
                  Dodopayments::InvoiceCreateParams::PaymentTerms::DueOnReceipt,
                  Dodopayments::InvoiceCreateParams::PaymentTerms::Net
                )
              ),
            review_required: T::Boolean,
            tax_id: T.nilable(String),
            idempotency_key: String,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      # A line that exists only on this invoice.
      module Item
        extend Dodopayments::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Dodopayments::InvoiceCreateParams::Item::CustomItem,
              Dodopayments::InvoiceCreateParams::Item::ProductItem
            )
          end

        class CustomItem < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::InvoiceCreateParams::Item::CustomItem,
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
                Dodopayments::InvoiceCreateParams::Item::ProductItem,
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
            T::Array[Dodopayments::InvoiceCreateParams::Item::Variants]
          )
        end
        def self.variants
        end
      end

      class BillingAddress < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::InvoiceCreateParams::BillingAddress,
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
              Dodopayments::InvoiceCreateParams::Dunning,
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

      # Do not send it with `due_at`.
      module PaymentTerms
        extend Dodopayments::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Dodopayments::InvoiceCreateParams::PaymentTerms::DueOnReceipt,
              Dodopayments::InvoiceCreateParams::PaymentTerms::Net
            )
          end

        class DueOnReceipt < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::InvoiceCreateParams::PaymentTerms::DueOnReceipt,
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
                Dodopayments::InvoiceCreateParams::PaymentTerms::Net,
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
            T::Array[Dodopayments::InvoiceCreateParams::PaymentTerms::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
