# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Invoices#create
    class Invoice < Dodopayments::Internal::Type::BaseModel
      # @!attribute allowed_actions
      #   The actions that the current status accepts.
      #
      #   @return [Array<Symbol, Dodopayments::Models::Invoice::AllowedAction>]
      required :allowed_actions,
               -> { Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::AllowedAction] }

      # @!attribute amount_due
      #   The amount that the customer must pay. Zero unless the invoice is open or past
      #   due.
      #
      #   @return [Integer]
      required :amount_due, Integer

      # @!attribute amount_paid
      #   The sum of the succeeded payments, in the smallest currency unit. A late payment
      #   is not included after its late refund.
      #
      #   @return [Integer]
      required :amount_paid, Integer

      # @!attribute amount_refunded
      #   The sum of the succeeded refunds, in the currency of each payment. The late
      #   refund of a late payment is not included.
      #
      #   @return [Integer]
      required :amount_refunded, Integer

      # @!attribute billing_mode
      #
      #   @return [Symbol, Dodopayments::Models::Invoice::BillingMode]
      required :billing_mode, enum: -> { Dodopayments::Invoice::BillingMode }

      # @!attribute business_id
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute credits
      #   Customer credits applied at finalise, in the smallest currency unit. Zero or
      #   less.
      #
      #   @return [Integer]
      required :credits, Integer

      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Models::Currency]
      required :currency, enum: -> { Dodopayments::Currency }

      # @!attribute customer
      #
      #   @return [Dodopayments::Models::Invoice::Customer]
      required :customer, -> { Dodopayments::Invoice::Customer }

      # @!attribute discount_ids
      #   The discount codes of the invoice.
      #
      #   @return [Array<String>]
      required :discount_ids, Dodopayments::Internal::Type::ArrayOf[String]

      # @!attribute editable_fields
      #   The fields that `PATCH` can change in the current status.
      #
      #   @return [Array<Symbol, Dodopayments::Models::Invoice::EditableField>]
      required :editable_fields,
               -> { Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::EditableField] }

      # @!attribute frequency
      #   How often the invoice lines bill. `mixed` covers several intervals, or one-time
      #   lines next to a plan.
      #
      #   @return [Dodopayments::Models::Invoice::Frequency::OneTime, Dodopayments::Models::Invoice::Frequency::Recurring, Dodopayments::Models::Invoice::Frequency::Mixed]
      required :frequency, union: -> { Dodopayments::Invoice::Frequency }

      # @!attribute invoice_id
      #
      #   @return [String]
      required :invoice_id, String

      # @!attribute metadata
      #
      #   @return [Object]
      required :metadata, Dodopayments::Internal::Type::Unknown

      # @!attribute refund_ids
      #
      #   @return [Array<String>]
      required :refund_ids, Dodopayments::Internal::Type::ArrayOf[String]

      # @!attribute retry_count
      #   The number of failed automatic charges.
      #
      #   @return [Integer]
      required :retry_count, Integer

      # @!attribute row_version
      #   Goes up by one on each change. Use it to ignore an older webhook delivery.
      #
      #   @return [Integer]
      required :row_version, Integer

      # @!attribute status
      #   The `message` of each variant is the label of the invoice document.
      #
      #   @return [Symbol, Dodopayments::Models::InvoiceStatus]
      required :status, enum: -> { Dodopayments::InvoiceStatus }

      # @!attribute subscription_ids
      #
      #   @return [Array<String>]
      required :subscription_ids, Dodopayments::Internal::Type::ArrayOf[String]

      # @!attribute tags
      #
      #   @return [Array<Symbol, Dodopayments::Models::Invoice::Tag>]
      required :tags, -> { Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::Tag] }

      # @!attribute tax
      #   Tax in the smallest currency unit.
      #
      #   @return [Integer]
      required :tax, Integer

      # @!attribute total_amount
      #   Total with tax, before credits, in the smallest currency unit.
      #
      #   @return [Integer]
      required :total_amount, Integer

      # @!attribute collection_method
      #
      #   @return [Symbol, Dodopayments::Models::CollectionMethod, nil]
      optional :collection_method, enum: -> { Dodopayments::CollectionMethod }, nil?: true

      # @!attribute due_at
      #
      #   @return [Time, nil]
      optional :due_at, Time, nil?: true

      # @!attribute dunning_state
      #   `null` for an invoice that has no collection: draft, paid, void or
      #   uncollectable.
      #
      #   @return [Symbol, Dodopayments::Models::DunningState, nil]
      optional :dunning_state, enum: -> { Dodopayments::DunningState }, nil?: true

      # @!attribute finalized_at
      #
      #   @return [Time, nil]
      optional :finalized_at, Time, nil?: true

      # @!attribute hosted_url
      #   The page where the customer pays. `null` until the invoice is sent.
      #
      #   @return [String, nil]
      optional :hosted_url, String, nil?: true

      # @!attribute lines
      #   Only on a single invoice. A list leaves it out.
      #
      #   @return [Array<Dodopayments::Models::InvoiceLine>, nil]
      optional :lines, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::InvoiceLine] }, nil?: true

      # @!attribute memo
      #
      #   @return [String, nil]
      optional :memo, String, nil?: true

      # @!attribute next_reminder_at
      #   The time of the next reminder email to the customer, before or after the due
      #   date. `null` when no reminder email will go out.
      #
      #   @return [Time, nil]
      optional :next_reminder_at, Time, nil?: true

      # @!attribute next_retry_at
      #
      #   @return [Time, nil]
      optional :next_retry_at, Time, nil?: true

      # @!attribute payment_terms_days
      #   Days from finalise to the due date. `null` when the invoice has a custom due
      #   date.
      #
      #   @return [Integer, nil]
      optional :payment_terms_days, Integer, nil?: true

      # @!attribute payments
      #   Only on a single invoice. A list leaves it out.
      #
      #   @return [Array<Dodopayments::Models::Invoice::Payment>, nil]
      optional :payments,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Invoice::Payment] },
               nil?: true

      # @!attribute pdf_url
      #
      #   @return [String, nil]
      optional :pdf_url, String, nil?: true

      # @!attribute reminder_settings
      #   `null` on a draft that keeps all reminder settings of the business.
      #
      #   @return [Dodopayments::Models::Invoice::ReminderSettings::Snapshot, Dodopayments::Models::Invoice::ReminderSettings::Override, nil]
      optional :reminder_settings, union: -> { Dodopayments::Invoice::ReminderSettings }, nil?: true

      # @!attribute review_deadline
      #   The time at which a draft that waits for review finalises.
      #
      #   @return [Time, nil]
      optional :review_deadline, Time, nil?: true

      # @!attribute sent_at
      #
      #   @return [Time, nil]
      optional :sent_at, Time, nil?: true

      # @!method initialize(allowed_actions:, amount_due:, amount_paid:, amount_refunded:, billing_mode:, business_id:, created_at:, credits:, currency:, customer:, discount_ids:, editable_fields:, frequency:, invoice_id:, metadata:, refund_ids:, retry_count:, row_version:, status:, subscription_ids:, tags:, tax:, total_amount:, collection_method: nil, due_at: nil, dunning_state: nil, finalized_at: nil, hosted_url: nil, lines: nil, memo: nil, next_reminder_at: nil, next_retry_at: nil, payment_terms_days: nil, payments: nil, pdf_url: nil, reminder_settings: nil, review_deadline: nil, sent_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::Invoice} for more details.
      #
      #   An invoice-led invoice. Every read and every `invoice.*` webhook uses this
      #   schema.
      #
      #   @param allowed_actions [Array<Symbol, Dodopayments::Models::Invoice::AllowedAction>] The actions that the current status accepts.
      #
      #   @param amount_due [Integer] The amount that the customer must pay. Zero unless the invoice is open or past d
      #
      #   @param amount_paid [Integer] The sum of the succeeded payments, in the smallest currency unit. A late payment
      #
      #   @param amount_refunded [Integer] The sum of the succeeded refunds, in the currency of each payment. The late refu
      #
      #   @param billing_mode [Symbol, Dodopayments::Models::Invoice::BillingMode]
      #
      #   @param business_id [String]
      #
      #   @param created_at [Time]
      #
      #   @param credits [Integer] Customer credits applied at finalise, in the smallest currency unit. Zero or les
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency]
      #
      #   @param customer [Dodopayments::Models::Invoice::Customer]
      #
      #   @param discount_ids [Array<String>] The discount codes of the invoice.
      #
      #   @param editable_fields [Array<Symbol, Dodopayments::Models::Invoice::EditableField>] The fields that `PATCH` can change in the current status.
      #
      #   @param frequency [Dodopayments::Models::Invoice::Frequency::OneTime, Dodopayments::Models::Invoice::Frequency::Recurring, Dodopayments::Models::Invoice::Frequency::Mixed] How often the invoice lines bill. `mixed` covers several intervals, or one-time
      #
      #   @param invoice_id [String]
      #
      #   @param metadata [Object]
      #
      #   @param refund_ids [Array<String>]
      #
      #   @param retry_count [Integer] The number of failed automatic charges.
      #
      #   @param row_version [Integer] Goes up by one on each change. Use it to ignore an older webhook delivery.
      #
      #   @param status [Symbol, Dodopayments::Models::InvoiceStatus] The `message` of each variant is the label of the invoice document.
      #
      #   @param subscription_ids [Array<String>]
      #
      #   @param tags [Array<Symbol, Dodopayments::Models::Invoice::Tag>]
      #
      #   @param tax [Integer] Tax in the smallest currency unit.
      #
      #   @param total_amount [Integer] Total with tax, before credits, in the smallest currency unit.
      #
      #   @param collection_method [Symbol, Dodopayments::Models::CollectionMethod, nil]
      #
      #   @param due_at [Time, nil]
      #
      #   @param dunning_state [Symbol, Dodopayments::Models::DunningState, nil] `null` for an invoice that has no collection: draft, paid, void or uncollectable
      #
      #   @param finalized_at [Time, nil]
      #
      #   @param hosted_url [String, nil] The page where the customer pays. `null` until the invoice is sent.
      #
      #   @param lines [Array<Dodopayments::Models::InvoiceLine>, nil] Only on a single invoice. A list leaves it out.
      #
      #   @param memo [String, nil]
      #
      #   @param next_reminder_at [Time, nil] The time of the next reminder email to the customer, before or after the due dat
      #
      #   @param next_retry_at [Time, nil]
      #
      #   @param payment_terms_days [Integer, nil] Days from finalise to the due date. `null` when the invoice has a custom due dat
      #
      #   @param payments [Array<Dodopayments::Models::Invoice::Payment>, nil] Only on a single invoice. A list leaves it out.
      #
      #   @param pdf_url [String, nil]
      #
      #   @param reminder_settings [Dodopayments::Models::Invoice::ReminderSettings::Snapshot, Dodopayments::Models::Invoice::ReminderSettings::Override, nil] `null` on a draft that keeps all reminder settings of the business.
      #
      #   @param review_deadline [Time, nil] The time at which a draft that waits for review finalises.
      #
      #   @param sent_at [Time, nil]

      # An action that a merchant can request on the invoice in its current status.
      module AllowedAction
        extend Dodopayments::Internal::Type::Enum

        EDIT = :edit
        FINALIZE = :finalize
        DELETE = :delete
        SEND = :send
        RETRY = :retry
        VOID = :void
        MARK_UNCOLLECTABLE = :mark_uncollectable
        CHANGE_DUNNING = :change_dunning
        ADD_NOTE = :add_note
        DUPLICATE = :duplicate

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Dodopayments::Models::Invoice#billing_mode
      module BillingMode
        extend Dodopayments::Internal::Type::Enum

        NORMAL = :normal
        INVOICE_LED = :invoice_led

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Dodopayments::Models::Invoice#customer
      class Customer < Dodopayments::Internal::Type::BaseModel
        # @!attribute billing_address
        #   A draft can have no country yet. Finalise needs it.
        #
        #   @return [Dodopayments::Models::Invoice::Customer::BillingAddress]
        required :billing_address, -> { Dodopayments::Invoice::Customer::BillingAddress }

        # @!attribute cc_emails
        #
        #   @return [Array<String>]
        required :cc_emails, Dodopayments::Internal::Type::ArrayOf[String]

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute email
        #
        #   @return [String, nil]
        optional :email, String, nil?: true

        # @!attribute tax_id
        #
        #   @return [String, nil]
        optional :tax_id, String, nil?: true

        # @!method initialize(billing_address:, cc_emails:, customer_id:, email: nil, tax_id: nil)
        #   @param billing_address [Dodopayments::Models::Invoice::Customer::BillingAddress] A draft can have no country yet. Finalise needs it.
        #
        #   @param cc_emails [Array<String>]
        #
        #   @param customer_id [String]
        #
        #   @param email [String, nil]
        #
        #   @param tax_id [String, nil]

        # @see Dodopayments::Models::Invoice::Customer#billing_address
        class BillingAddress < Dodopayments::Internal::Type::BaseModel
          # @!attribute city
          #
          #   @return [String, nil]
          optional :city, String, nil?: true

          # @!attribute country
          #   ISO country code alpha2 variant
          #
          #   @return [Symbol, Dodopayments::Models::CountryCode, nil]
          optional :country, enum: -> { Dodopayments::CountryCode }, nil?: true

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

          # @!method initialize(city: nil, country: nil, state: nil, street: nil, zipcode: nil)
          #   A draft can have no country yet. Finalise needs it.
          #
          #   @param city [String, nil]
          #
          #   @param country [Symbol, Dodopayments::Models::CountryCode, nil] ISO country code alpha2 variant
          #
          #   @param state [String, nil]
          #
          #   @param street [String, nil]
          #
          #   @param zipcode [String, nil]
        end
      end

      module EditableField
        extend Dodopayments::Internal::Type::Enum

        CUSTOMER = :customer
        ITEMS = :items
        DISCOUNTS = :discounts
        CURRENCY = :currency
        BILLING_ADDRESS = :billing_address
        TAX_ID = :tax_id
        REVIEW_REQUIRED = :review_required
        DUE_AT = :due_at
        COLLECTION_METHOD = :collection_method
        MEMO = :memo
        CUSTOMER_EMAIL = :customer_email
        CC_EMAILS = :cc_emails
        DUNNING = :dunning
        METADATA = :metadata

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # How often the invoice lines bill. `mixed` covers several intervals, or one-time
      # lines next to a plan.
      #
      # @see Dodopayments::Models::Invoice#frequency
      module Frequency
        extend Dodopayments::Internal::Type::Union

        discriminator :type

        variant :one_time, -> { Dodopayments::Invoice::Frequency::OneTime }

        variant :recurring, -> { Dodopayments::Invoice::Frequency::Recurring }

        variant :mixed, -> { Dodopayments::Invoice::Frequency::Mixed }

        class OneTime < Dodopayments::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :one_time]
          required :type, const: :one_time

          # @!method initialize(type: :one_time)
          #   @param type [Symbol, :one_time]
        end

        class Recurring < Dodopayments::Internal::Type::BaseModel
          # @!attribute count
          #
          #   @return [Integer]
          required :count, Integer

          # @!attribute interval
          #   Unit of a duration count (e.g. license-key validity period).
          #
          #   @return [Symbol, Dodopayments::Models::TimeInterval]
          required :interval, enum: -> { Dodopayments::TimeInterval }

          # @!attribute type
          #
          #   @return [Symbol, :recurring]
          required :type, const: :recurring

          # @!method initialize(count:, interval:, type: :recurring)
          #   @param count [Integer]
          #
          #   @param interval [Symbol, Dodopayments::Models::TimeInterval] Unit of a duration count (e.g. license-key validity period).
          #
          #   @param type [Symbol, :recurring]
        end

        class Mixed < Dodopayments::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :mixed]
          required :type, const: :mixed

          # @!method initialize(type: :mixed)
          #   @param type [Symbol, :mixed]
        end

        # @!method self.variants
        #   @return [Array(Dodopayments::Models::Invoice::Frequency::OneTime, Dodopayments::Models::Invoice::Frequency::Recurring, Dodopayments::Models::Invoice::Frequency::Mixed)]
      end

      module Tag
        extend Dodopayments::Internal::Type::Enum

        REFUNDED = :refunded
        PARTIALLY_REFUNDED = :partially_refunded
        DISPUTED = :disputed
        PAYMENT_REVERSED = :payment_reversed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Payment < Dodopayments::Internal::Type::BaseModel
        # @!attribute amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute payment_id
        #
        #   @return [String]
        required :payment_id, String

        # @!attribute retry_attempt
        #   The automatic charge number. `null` for a payment that the customer started.
        #
        #   @return [Integer, nil]
        optional :retry_attempt, Integer, nil?: true

        # @!attribute status
        #   `null` while the processor has not answered.
        #
        #   @return [Symbol, Dodopayments::Models::IntentStatus, nil]
        optional :status, enum: -> { Dodopayments::IntentStatus }, nil?: true

        # @!method initialize(amount:, created_at:, payment_id:, retry_attempt: nil, status: nil)
        #   @param amount [Integer]
        #
        #   @param created_at [Time]
        #
        #   @param payment_id [String]
        #
        #   @param retry_attempt [Integer, nil] The automatic charge number. `null` for a payment that the customer started.
        #
        #   @param status [Symbol, Dodopayments::Models::IntentStatus, nil] `null` while the processor has not answered.
      end

      # `null` on a draft that keeps all reminder settings of the business.
      #
      # @see Dodopayments::Models::Invoice#reminder_settings
      module ReminderSettings
        extend Dodopayments::Internal::Type::Union

        discriminator :kind

        # The settings that finalise froze. The reminders run on them.
        variant :snapshot, -> { Dodopayments::Invoice::ReminderSettings::Snapshot }

        # The changes of a draft. A `null` field keeps the business value at finalise.
        variant :override, -> { Dodopayments::Invoice::ReminderSettings::Override }

        class Snapshot < Dodopayments::Internal::Type::BaseModel
          # @!attribute kind
          #
          #   @return [Symbol, :snapshot]
          required :kind, const: :snapshot

          # @!attribute offsets_minutes
          #
          #   @return [Array<Integer>]
          required :offsets_minutes, Dodopayments::Internal::Type::ArrayOf[Integer]

          # @!attribute paused
          #
          #   @return [Boolean]
          required :paused, Dodopayments::Internal::Type::Boolean

          # @!attribute reminders_enabled
          #
          #   @return [Boolean]
          required :reminders_enabled, Dodopayments::Internal::Type::Boolean

          # @!method initialize(offsets_minutes:, paused:, reminders_enabled:, kind: :snapshot)
          #   The settings that finalise froze. The reminders run on them.
          #
          #   @param offsets_minutes [Array<Integer>]
          #   @param paused [Boolean]
          #   @param reminders_enabled [Boolean]
          #   @param kind [Symbol, :snapshot]
        end

        class Override < Dodopayments::Internal::Type::BaseModel
          # @!attribute kind
          #
          #   @return [Symbol, :override]
          required :kind, const: :override

          # @!attribute offsets_minutes
          #
          #   @return [Array<Integer>, nil]
          optional :offsets_minutes, Dodopayments::Internal::Type::ArrayOf[Integer], nil?: true

          # @!attribute paused
          #
          #   @return [Boolean, nil]
          optional :paused, Dodopayments::Internal::Type::Boolean, nil?: true

          # @!attribute reminders_enabled
          #
          #   @return [Boolean, nil]
          optional :reminders_enabled, Dodopayments::Internal::Type::Boolean, nil?: true

          # @!method initialize(offsets_minutes: nil, paused: nil, reminders_enabled: nil, kind: :override)
          #   The changes of a draft. A `null` field keeps the business value at finalise.
          #
          #   @param offsets_minutes [Array<Integer>, nil]
          #   @param paused [Boolean, nil]
          #   @param reminders_enabled [Boolean, nil]
          #   @param kind [Symbol, :override]
        end

        # @!method self.variants
        #   @return [Array(Dodopayments::Models::Invoice::ReminderSettings::Snapshot, Dodopayments::Models::Invoice::ReminderSettings::Override)]
      end
    end
  end
end
