# typed: strong

module Dodopayments
  module Models
    class Invoice < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::Invoice, Dodopayments::Internal::AnyHash)
        end

      # The actions that the current status accepts.
      sig do
        returns(T::Array[Dodopayments::Invoice::AllowedAction::TaggedSymbol])
      end
      attr_accessor :allowed_actions

      # The amount that the customer must pay. Zero unless the invoice is open or past
      # due.
      sig { returns(Integer) }
      attr_accessor :amount_due

      # The sum of the succeeded payments, in the smallest currency unit. A late payment
      # is not included after its late refund.
      sig { returns(Integer) }
      attr_accessor :amount_paid

      # The sum of the succeeded refunds, in the currency of each payment. The late
      # refund of a late payment is not included.
      sig { returns(Integer) }
      attr_accessor :amount_refunded

      sig { returns(Dodopayments::Invoice::BillingMode::TaggedSymbol) }
      attr_accessor :billing_mode

      sig { returns(String) }
      attr_accessor :business_id

      sig { returns(Time) }
      attr_accessor :created_at

      # Customer credits applied at finalise, in the smallest currency unit. Zero or
      # less.
      sig { returns(Integer) }
      attr_accessor :credits

      sig { returns(Dodopayments::Currency::TaggedSymbol) }
      attr_accessor :currency

      sig { returns(Dodopayments::Invoice::Customer) }
      attr_reader :customer

      sig { params(customer: Dodopayments::Invoice::Customer::OrHash).void }
      attr_writer :customer

      # The discount codes of the invoice.
      sig { returns(T::Array[String]) }
      attr_accessor :discount_ids

      # The fields that `PATCH` can change in the current status.
      sig do
        returns(T::Array[Dodopayments::Invoice::EditableField::TaggedSymbol])
      end
      attr_accessor :editable_fields

      # How often the invoice lines bill. `mixed` covers several intervals, or one-time
      # lines next to a plan.
      sig { returns(Dodopayments::Invoice::Frequency::Variants) }
      attr_accessor :frequency

      sig { returns(String) }
      attr_accessor :invoice_id

      sig { returns(T.anything) }
      attr_accessor :metadata

      sig { returns(T::Array[String]) }
      attr_accessor :refund_ids

      # The number of failed automatic charges.
      sig { returns(Integer) }
      attr_accessor :retry_count

      # Goes up by one on each change. Use it to ignore an older webhook delivery.
      sig { returns(Integer) }
      attr_accessor :row_version

      # The `message` of each variant is the label of the invoice document.
      sig { returns(Dodopayments::InvoiceStatus::TaggedSymbol) }
      attr_accessor :status

      sig { returns(T::Array[String]) }
      attr_accessor :subscription_ids

      sig { returns(T::Array[Dodopayments::Invoice::Tag::TaggedSymbol]) }
      attr_accessor :tags

      # Tax in the smallest currency unit.
      sig { returns(Integer) }
      attr_accessor :tax

      # Total with tax, before credits, in the smallest currency unit.
      sig { returns(Integer) }
      attr_accessor :total_amount

      sig { returns(T.nilable(Dodopayments::CollectionMethod::TaggedSymbol)) }
      attr_accessor :collection_method

      sig { returns(T.nilable(Time)) }
      attr_accessor :due_at

      # `null` for an invoice that has no collection: draft, paid, void or
      # uncollectable.
      sig { returns(T.nilable(Dodopayments::DunningState::TaggedSymbol)) }
      attr_accessor :dunning_state

      sig { returns(T.nilable(Time)) }
      attr_accessor :finalized_at

      # The page where the customer pays. `null` until the invoice is sent.
      sig { returns(T.nilable(String)) }
      attr_accessor :hosted_url

      # Only on a single invoice. A list leaves it out.
      sig { returns(T.nilable(T::Array[Dodopayments::InvoiceLine])) }
      attr_accessor :lines

      sig { returns(T.nilable(String)) }
      attr_accessor :memo

      # The time of the next reminder email to the customer, before or after the due
      # date. `null` when no reminder email will go out.
      sig { returns(T.nilable(Time)) }
      attr_accessor :next_reminder_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :next_retry_at

      # Days from finalise to the due date. `null` when the invoice has a custom due
      # date.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :payment_terms_days

      # Only on a single invoice. A list leaves it out.
      sig { returns(T.nilable(T::Array[Dodopayments::Invoice::Payment])) }
      attr_accessor :payments

      sig { returns(T.nilable(String)) }
      attr_accessor :pdf_url

      # `null` on a draft that keeps all reminder settings of the business.
      sig do
        returns(T.nilable(Dodopayments::Invoice::ReminderSettings::Variants))
      end
      attr_accessor :reminder_settings

      # The time at which a draft that waits for review finalises.
      sig { returns(T.nilable(Time)) }
      attr_accessor :review_deadline

      sig { returns(T.nilable(Time)) }
      attr_accessor :sent_at

      # An invoice-led invoice. Every read and every `invoice.*` webhook uses this
      # schema.
      sig do
        params(
          allowed_actions:
            T::Array[Dodopayments::Invoice::AllowedAction::OrSymbol],
          amount_due: Integer,
          amount_paid: Integer,
          amount_refunded: Integer,
          billing_mode: Dodopayments::Invoice::BillingMode::OrSymbol,
          business_id: String,
          created_at: Time,
          credits: Integer,
          currency: Dodopayments::Currency::OrSymbol,
          customer: Dodopayments::Invoice::Customer::OrHash,
          discount_ids: T::Array[String],
          editable_fields:
            T::Array[Dodopayments::Invoice::EditableField::OrSymbol],
          frequency:
            T.any(
              Dodopayments::Invoice::Frequency::OneTime::OrHash,
              Dodopayments::Invoice::Frequency::Recurring::OrHash,
              Dodopayments::Invoice::Frequency::Mixed::OrHash
            ),
          invoice_id: String,
          metadata: T.anything,
          refund_ids: T::Array[String],
          retry_count: Integer,
          row_version: Integer,
          status: Dodopayments::InvoiceStatus::OrSymbol,
          subscription_ids: T::Array[String],
          tags: T::Array[Dodopayments::Invoice::Tag::OrSymbol],
          tax: Integer,
          total_amount: Integer,
          collection_method:
            T.nilable(Dodopayments::CollectionMethod::OrSymbol),
          due_at: T.nilable(Time),
          dunning_state: T.nilable(Dodopayments::DunningState::OrSymbol),
          finalized_at: T.nilable(Time),
          hosted_url: T.nilable(String),
          lines: T.nilable(T::Array[Dodopayments::InvoiceLine::OrHash]),
          memo: T.nilable(String),
          next_reminder_at: T.nilable(Time),
          next_retry_at: T.nilable(Time),
          payment_terms_days: T.nilable(Integer),
          payments: T.nilable(T::Array[Dodopayments::Invoice::Payment::OrHash]),
          pdf_url: T.nilable(String),
          reminder_settings:
            T.nilable(
              T.any(
                Dodopayments::Invoice::ReminderSettings::Snapshot::OrHash,
                Dodopayments::Invoice::ReminderSettings::Override::OrHash
              )
            ),
          review_deadline: T.nilable(Time),
          sent_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        # The actions that the current status accepts.
        allowed_actions:,
        # The amount that the customer must pay. Zero unless the invoice is open or past
        # due.
        amount_due:,
        # The sum of the succeeded payments, in the smallest currency unit. A late payment
        # is not included after its late refund.
        amount_paid:,
        # The sum of the succeeded refunds, in the currency of each payment. The late
        # refund of a late payment is not included.
        amount_refunded:,
        billing_mode:,
        business_id:,
        created_at:,
        # Customer credits applied at finalise, in the smallest currency unit. Zero or
        # less.
        credits:,
        currency:,
        customer:,
        # The discount codes of the invoice.
        discount_ids:,
        # The fields that `PATCH` can change in the current status.
        editable_fields:,
        # How often the invoice lines bill. `mixed` covers several intervals, or one-time
        # lines next to a plan.
        frequency:,
        invoice_id:,
        metadata:,
        refund_ids:,
        # The number of failed automatic charges.
        retry_count:,
        # Goes up by one on each change. Use it to ignore an older webhook delivery.
        row_version:,
        # The `message` of each variant is the label of the invoice document.
        status:,
        subscription_ids:,
        tags:,
        # Tax in the smallest currency unit.
        tax:,
        # Total with tax, before credits, in the smallest currency unit.
        total_amount:,
        collection_method: nil,
        due_at: nil,
        # `null` for an invoice that has no collection: draft, paid, void or
        # uncollectable.
        dunning_state: nil,
        finalized_at: nil,
        # The page where the customer pays. `null` until the invoice is sent.
        hosted_url: nil,
        # Only on a single invoice. A list leaves it out.
        lines: nil,
        memo: nil,
        # The time of the next reminder email to the customer, before or after the due
        # date. `null` when no reminder email will go out.
        next_reminder_at: nil,
        next_retry_at: nil,
        # Days from finalise to the due date. `null` when the invoice has a custom due
        # date.
        payment_terms_days: nil,
        # Only on a single invoice. A list leaves it out.
        payments: nil,
        pdf_url: nil,
        # `null` on a draft that keeps all reminder settings of the business.
        reminder_settings: nil,
        # The time at which a draft that waits for review finalises.
        review_deadline: nil,
        sent_at: nil
      )
      end

      sig do
        override.returns(
          {
            allowed_actions:
              T::Array[Dodopayments::Invoice::AllowedAction::TaggedSymbol],
            amount_due: Integer,
            amount_paid: Integer,
            amount_refunded: Integer,
            billing_mode: Dodopayments::Invoice::BillingMode::TaggedSymbol,
            business_id: String,
            created_at: Time,
            credits: Integer,
            currency: Dodopayments::Currency::TaggedSymbol,
            customer: Dodopayments::Invoice::Customer,
            discount_ids: T::Array[String],
            editable_fields:
              T::Array[Dodopayments::Invoice::EditableField::TaggedSymbol],
            frequency: Dodopayments::Invoice::Frequency::Variants,
            invoice_id: String,
            metadata: T.anything,
            refund_ids: T::Array[String],
            retry_count: Integer,
            row_version: Integer,
            status: Dodopayments::InvoiceStatus::TaggedSymbol,
            subscription_ids: T::Array[String],
            tags: T::Array[Dodopayments::Invoice::Tag::TaggedSymbol],
            tax: Integer,
            total_amount: Integer,
            collection_method:
              T.nilable(Dodopayments::CollectionMethod::TaggedSymbol),
            due_at: T.nilable(Time),
            dunning_state: T.nilable(Dodopayments::DunningState::TaggedSymbol),
            finalized_at: T.nilable(Time),
            hosted_url: T.nilable(String),
            lines: T.nilable(T::Array[Dodopayments::InvoiceLine]),
            memo: T.nilable(String),
            next_reminder_at: T.nilable(Time),
            next_retry_at: T.nilable(Time),
            payment_terms_days: T.nilable(Integer),
            payments: T.nilable(T::Array[Dodopayments::Invoice::Payment]),
            pdf_url: T.nilable(String),
            reminder_settings:
              T.nilable(Dodopayments::Invoice::ReminderSettings::Variants),
            review_deadline: T.nilable(Time),
            sent_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end

      # An action that a merchant can request on the invoice in its current status.
      module AllowedAction
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dodopayments::Invoice::AllowedAction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EDIT = T.let(:edit, Dodopayments::Invoice::AllowedAction::TaggedSymbol)
        FINALIZE =
          T.let(:finalize, Dodopayments::Invoice::AllowedAction::TaggedSymbol)
        DELETE =
          T.let(:delete, Dodopayments::Invoice::AllowedAction::TaggedSymbol)
        SEND = T.let(:send, Dodopayments::Invoice::AllowedAction::TaggedSymbol)
        RETRY =
          T.let(:retry, Dodopayments::Invoice::AllowedAction::TaggedSymbol)
        VOID = T.let(:void, Dodopayments::Invoice::AllowedAction::TaggedSymbol)
        MARK_UNCOLLECTABLE =
          T.let(
            :mark_uncollectable,
            Dodopayments::Invoice::AllowedAction::TaggedSymbol
          )
        CHANGE_DUNNING =
          T.let(
            :change_dunning,
            Dodopayments::Invoice::AllowedAction::TaggedSymbol
          )
        ADD_NOTE =
          T.let(:add_note, Dodopayments::Invoice::AllowedAction::TaggedSymbol)
        DUPLICATE =
          T.let(:duplicate, Dodopayments::Invoice::AllowedAction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Dodopayments::Invoice::AllowedAction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module BillingMode
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dodopayments::Invoice::BillingMode) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NORMAL =
          T.let(:normal, Dodopayments::Invoice::BillingMode::TaggedSymbol)
        INVOICE_LED =
          T.let(:invoice_led, Dodopayments::Invoice::BillingMode::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Dodopayments::Invoice::BillingMode::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Customer < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Invoice::Customer,
              Dodopayments::Internal::AnyHash
            )
          end

        # A draft can have no country yet. Finalise needs it.
        sig { returns(Dodopayments::Invoice::Customer::BillingAddress) }
        attr_reader :billing_address

        sig do
          params(
            billing_address:
              Dodopayments::Invoice::Customer::BillingAddress::OrHash
          ).void
        end
        attr_writer :billing_address

        sig { returns(T::Array[String]) }
        attr_accessor :cc_emails

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(T.nilable(String)) }
        attr_accessor :email

        sig { returns(T.nilable(String)) }
        attr_accessor :tax_id

        sig do
          params(
            billing_address:
              Dodopayments::Invoice::Customer::BillingAddress::OrHash,
            cc_emails: T::Array[String],
            customer_id: String,
            email: T.nilable(String),
            tax_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # A draft can have no country yet. Finalise needs it.
          billing_address:,
          cc_emails:,
          customer_id:,
          email: nil,
          tax_id: nil
        )
        end

        sig do
          override.returns(
            {
              billing_address: Dodopayments::Invoice::Customer::BillingAddress,
              cc_emails: T::Array[String],
              customer_id: String,
              email: T.nilable(String),
              tax_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class BillingAddress < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Invoice::Customer::BillingAddress,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :city

          # ISO country code alpha2 variant
          sig { returns(T.nilable(Dodopayments::CountryCode::TaggedSymbol)) }
          attr_accessor :country

          sig { returns(T.nilable(String)) }
          attr_accessor :state

          sig { returns(T.nilable(String)) }
          attr_accessor :street

          sig { returns(T.nilable(String)) }
          attr_accessor :zipcode

          # A draft can have no country yet. Finalise needs it.
          sig do
            params(
              city: T.nilable(String),
              country: T.nilable(Dodopayments::CountryCode::OrSymbol),
              state: T.nilable(String),
              street: T.nilable(String),
              zipcode: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            city: nil,
            # ISO country code alpha2 variant
            country: nil,
            state: nil,
            street: nil,
            zipcode: nil
          )
          end

          sig do
            override.returns(
              {
                city: T.nilable(String),
                country: T.nilable(Dodopayments::CountryCode::TaggedSymbol),
                state: T.nilable(String),
                street: T.nilable(String),
                zipcode: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end

      module EditableField
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dodopayments::Invoice::EditableField) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CUSTOMER =
          T.let(:customer, Dodopayments::Invoice::EditableField::TaggedSymbol)
        ITEMS =
          T.let(:items, Dodopayments::Invoice::EditableField::TaggedSymbol)
        DISCOUNTS =
          T.let(:discounts, Dodopayments::Invoice::EditableField::TaggedSymbol)
        CURRENCY =
          T.let(:currency, Dodopayments::Invoice::EditableField::TaggedSymbol)
        BILLING_ADDRESS =
          T.let(
            :billing_address,
            Dodopayments::Invoice::EditableField::TaggedSymbol
          )
        TAX_ID =
          T.let(:tax_id, Dodopayments::Invoice::EditableField::TaggedSymbol)
        REVIEW_REQUIRED =
          T.let(
            :review_required,
            Dodopayments::Invoice::EditableField::TaggedSymbol
          )
        DUE_AT =
          T.let(:due_at, Dodopayments::Invoice::EditableField::TaggedSymbol)
        COLLECTION_METHOD =
          T.let(
            :collection_method,
            Dodopayments::Invoice::EditableField::TaggedSymbol
          )
        MEMO = T.let(:memo, Dodopayments::Invoice::EditableField::TaggedSymbol)
        CUSTOMER_EMAIL =
          T.let(
            :customer_email,
            Dodopayments::Invoice::EditableField::TaggedSymbol
          )
        CC_EMAILS =
          T.let(:cc_emails, Dodopayments::Invoice::EditableField::TaggedSymbol)
        DUNNING =
          T.let(:dunning, Dodopayments::Invoice::EditableField::TaggedSymbol)
        METADATA =
          T.let(:metadata, Dodopayments::Invoice::EditableField::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Dodopayments::Invoice::EditableField::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # How often the invoice lines bill. `mixed` covers several intervals, or one-time
      # lines next to a plan.
      module Frequency
        extend Dodopayments::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Dodopayments::Invoice::Frequency::OneTime,
              Dodopayments::Invoice::Frequency::Recurring,
              Dodopayments::Invoice::Frequency::Mixed
            )
          end

        class OneTime < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Invoice::Frequency::OneTime,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :type

          sig { params(type: Symbol).returns(T.attached_class) }
          def self.new(type: :one_time)
          end

          sig { override.returns({ type: Symbol }) }
          def to_hash
          end
        end

        class Recurring < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Invoice::Frequency::Recurring,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :count

          # Unit of a duration count (e.g. license-key validity period).
          sig { returns(Dodopayments::TimeInterval::TaggedSymbol) }
          attr_accessor :interval

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(
              count: Integer,
              interval: Dodopayments::TimeInterval::OrSymbol,
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            count:,
            # Unit of a duration count (e.g. license-key validity period).
            interval:,
            type: :recurring
          )
          end

          sig do
            override.returns(
              {
                count: Integer,
                interval: Dodopayments::TimeInterval::TaggedSymbol,
                type: Symbol
              }
            )
          end
          def to_hash
          end
        end

        class Mixed < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Invoice::Frequency::Mixed,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :type

          sig { params(type: Symbol).returns(T.attached_class) }
          def self.new(type: :mixed)
          end

          sig { override.returns({ type: Symbol }) }
          def to_hash
          end
        end

        sig do
          override.returns(T::Array[Dodopayments::Invoice::Frequency::Variants])
        end
        def self.variants
        end
      end

      module Tag
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dodopayments::Invoice::Tag) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REFUNDED = T.let(:refunded, Dodopayments::Invoice::Tag::TaggedSymbol)
        PARTIALLY_REFUNDED =
          T.let(:partially_refunded, Dodopayments::Invoice::Tag::TaggedSymbol)
        DISPUTED = T.let(:disputed, Dodopayments::Invoice::Tag::TaggedSymbol)
        PAYMENT_REVERSED =
          T.let(:payment_reversed, Dodopayments::Invoice::Tag::TaggedSymbol)

        sig do
          override.returns(T::Array[Dodopayments::Invoice::Tag::TaggedSymbol])
        end
        def self.values
        end
      end

      class Payment < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Invoice::Payment,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :payment_id

        # The automatic charge number. `null` for a payment that the customer started.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :retry_attempt

        # `null` while the processor has not answered.
        sig { returns(T.nilable(Dodopayments::IntentStatus::TaggedSymbol)) }
        attr_accessor :status

        sig do
          params(
            amount: Integer,
            created_at: Time,
            payment_id: String,
            retry_attempt: T.nilable(Integer),
            status: T.nilable(Dodopayments::IntentStatus::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          amount:,
          created_at:,
          payment_id:,
          # The automatic charge number. `null` for a payment that the customer started.
          retry_attempt: nil,
          # `null` while the processor has not answered.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              amount: Integer,
              created_at: Time,
              payment_id: String,
              retry_attempt: T.nilable(Integer),
              status: T.nilable(Dodopayments::IntentStatus::TaggedSymbol)
            }
          )
        end
        def to_hash
        end
      end

      # `null` on a draft that keeps all reminder settings of the business.
      module ReminderSettings
        extend Dodopayments::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Dodopayments::Invoice::ReminderSettings::Snapshot,
              Dodopayments::Invoice::ReminderSettings::Override
            )
          end

        class Snapshot < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Invoice::ReminderSettings::Snapshot,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :kind

          sig { returns(T::Array[Integer]) }
          attr_accessor :offsets_minutes

          sig { returns(T::Boolean) }
          attr_accessor :paused

          sig { returns(T::Boolean) }
          attr_accessor :reminders_enabled

          # The settings that finalise froze. The reminders run on them.
          sig do
            params(
              offsets_minutes: T::Array[Integer],
              paused: T::Boolean,
              reminders_enabled: T::Boolean,
              kind: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            offsets_minutes:,
            paused:,
            reminders_enabled:,
            kind: :snapshot
          )
          end

          sig do
            override.returns(
              {
                kind: Symbol,
                offsets_minutes: T::Array[Integer],
                paused: T::Boolean,
                reminders_enabled: T::Boolean
              }
            )
          end
          def to_hash
          end
        end

        class Override < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Invoice::ReminderSettings::Override,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :kind

          sig { returns(T.nilable(T::Array[Integer])) }
          attr_accessor :offsets_minutes

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :paused

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :reminders_enabled

          # The changes of a draft. A `null` field keeps the business value at finalise.
          sig do
            params(
              offsets_minutes: T.nilable(T::Array[Integer]),
              paused: T.nilable(T::Boolean),
              reminders_enabled: T.nilable(T::Boolean),
              kind: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            offsets_minutes: nil,
            paused: nil,
            reminders_enabled: nil,
            kind: :override
          )
          end

          sig do
            override.returns(
              {
                kind: Symbol,
                offsets_minutes: T.nilable(T::Array[Integer]),
                paused: T.nilable(T::Boolean),
                reminders_enabled: T.nilable(T::Boolean)
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[Dodopayments::Invoice::ReminderSettings::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
