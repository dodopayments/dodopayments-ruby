# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::InvoicesTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response =
      @dodo_payments.invoices.create(
        collection_method: :auto_charge,
        currency: :AED,
        customer_id: "customer_id",
        items: [{description: "description", kind: :custom, tax_category: :digital_products, unit_amount: 0}]
      )

    assert_pattern do
      response => Dodopayments::Invoice
    end

    assert_pattern do
      response => {
        allowed_actions: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::AllowedAction]),
        amount_due: Integer,
        amount_paid: Integer,
        amount_refunded: Integer,
        billing_mode: Dodopayments::Invoice::BillingMode,
        business_id: String,
        created_at: Time,
        credits: Integer,
        currency: Dodopayments::Currency,
        customer: Dodopayments::Invoice::Customer,
        discount_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        editable_fields: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::EditableField]),
        frequency: Dodopayments::Invoice::Frequency,
        invoice_id: String,
        metadata: Dodopayments::Internal::Type::Unknown,
        refund_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        retry_count: Integer,
        row_version: Integer,
        status: Dodopayments::InvoiceStatus,
        subscription_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        tags: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::Tag]),
        tax: Integer,
        total_amount: Integer,
        collection_method: Dodopayments::CollectionMethod | nil,
        due_at: Time | nil,
        dunning_state: Dodopayments::DunningState | nil,
        finalized_at: Time | nil,
        hosted_url: String | nil,
        lines: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::InvoiceLine]) | nil,
        memo: String | nil,
        next_reminder_at: Time | nil,
        next_retry_at: Time | nil,
        payment_terms_days: Integer | nil,
        payments: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Invoice::Payment]) | nil,
        pdf_url: String | nil,
        reminder_settings: Dodopayments::Invoice::ReminderSettings | nil,
        review_deadline: Time | nil,
        sent_at: Time | nil
      }
    end
  end

  def test_retrieve
    response = @dodo_payments.invoices.retrieve("invoice_id")

    assert_pattern do
      response => Dodopayments::Invoice
    end

    assert_pattern do
      response => {
        allowed_actions: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::AllowedAction]),
        amount_due: Integer,
        amount_paid: Integer,
        amount_refunded: Integer,
        billing_mode: Dodopayments::Invoice::BillingMode,
        business_id: String,
        created_at: Time,
        credits: Integer,
        currency: Dodopayments::Currency,
        customer: Dodopayments::Invoice::Customer,
        discount_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        editable_fields: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::EditableField]),
        frequency: Dodopayments::Invoice::Frequency,
        invoice_id: String,
        metadata: Dodopayments::Internal::Type::Unknown,
        refund_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        retry_count: Integer,
        row_version: Integer,
        status: Dodopayments::InvoiceStatus,
        subscription_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        tags: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::Tag]),
        tax: Integer,
        total_amount: Integer,
        collection_method: Dodopayments::CollectionMethod | nil,
        due_at: Time | nil,
        dunning_state: Dodopayments::DunningState | nil,
        finalized_at: Time | nil,
        hosted_url: String | nil,
        lines: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::InvoiceLine]) | nil,
        memo: String | nil,
        next_reminder_at: Time | nil,
        next_retry_at: Time | nil,
        payment_terms_days: Integer | nil,
        payments: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Invoice::Payment]) | nil,
        pdf_url: String | nil,
        reminder_settings: Dodopayments::Invoice::ReminderSettings | nil,
        review_deadline: Time | nil,
        sent_at: Time | nil
      }
    end
  end

  def test_update_required_params
    response = @dodo_payments.invoices.update("invoice_id", if_match: "If-Match")

    assert_pattern do
      response => Dodopayments::Invoice
    end

    assert_pattern do
      response => {
        allowed_actions: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::AllowedAction]),
        amount_due: Integer,
        amount_paid: Integer,
        amount_refunded: Integer,
        billing_mode: Dodopayments::Invoice::BillingMode,
        business_id: String,
        created_at: Time,
        credits: Integer,
        currency: Dodopayments::Currency,
        customer: Dodopayments::Invoice::Customer,
        discount_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        editable_fields: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::EditableField]),
        frequency: Dodopayments::Invoice::Frequency,
        invoice_id: String,
        metadata: Dodopayments::Internal::Type::Unknown,
        refund_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        retry_count: Integer,
        row_version: Integer,
        status: Dodopayments::InvoiceStatus,
        subscription_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        tags: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::Tag]),
        tax: Integer,
        total_amount: Integer,
        collection_method: Dodopayments::CollectionMethod | nil,
        due_at: Time | nil,
        dunning_state: Dodopayments::DunningState | nil,
        finalized_at: Time | nil,
        hosted_url: String | nil,
        lines: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::InvoiceLine]) | nil,
        memo: String | nil,
        next_reminder_at: Time | nil,
        next_retry_at: Time | nil,
        payment_terms_days: Integer | nil,
        payments: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Invoice::Payment]) | nil,
        pdf_url: String | nil,
        reminder_settings: Dodopayments::Invoice::ReminderSettings | nil,
        review_deadline: Time | nil,
        sent_at: Time | nil
      }
    end
  end

  def test_list
    response = @dodo_payments.invoices.list

    assert_pattern do
      response => Dodopayments::Internal::DefaultPageNumberPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Dodopayments::Invoice
    end

    assert_pattern do
      row => {
        allowed_actions: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::AllowedAction]),
        amount_due: Integer,
        amount_paid: Integer,
        amount_refunded: Integer,
        billing_mode: Dodopayments::Invoice::BillingMode,
        business_id: String,
        created_at: Time,
        credits: Integer,
        currency: Dodopayments::Currency,
        customer: Dodopayments::Invoice::Customer,
        discount_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        editable_fields: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::EditableField]),
        frequency: Dodopayments::Invoice::Frequency,
        invoice_id: String,
        metadata: Dodopayments::Internal::Type::Unknown,
        refund_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        retry_count: Integer,
        row_version: Integer,
        status: Dodopayments::InvoiceStatus,
        subscription_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        tags: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::Tag]),
        tax: Integer,
        total_amount: Integer,
        collection_method: Dodopayments::CollectionMethod | nil,
        due_at: Time | nil,
        dunning_state: Dodopayments::DunningState | nil,
        finalized_at: Time | nil,
        hosted_url: String | nil,
        lines: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::InvoiceLine]) | nil,
        memo: String | nil,
        next_reminder_at: Time | nil,
        next_retry_at: Time | nil,
        payment_terms_days: Integer | nil,
        payments: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Invoice::Payment]) | nil,
        pdf_url: String | nil,
        reminder_settings: Dodopayments::Invoice::ReminderSettings | nil,
        review_deadline: Time | nil,
        sent_at: Time | nil
      }
    end
  end

  def test_delete_required_params
    response = @dodo_payments.invoices.delete("invoice_id", if_match: "If-Match")

    assert_pattern do
      response => nil
    end
  end

  def test_add_note_required_params
    response = @dodo_payments.invoices.add_note("invoice_id", text: "text")

    assert_pattern do
      response => Dodopayments::Invoice
    end

    assert_pattern do
      response => {
        allowed_actions: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::AllowedAction]),
        amount_due: Integer,
        amount_paid: Integer,
        amount_refunded: Integer,
        billing_mode: Dodopayments::Invoice::BillingMode,
        business_id: String,
        created_at: Time,
        credits: Integer,
        currency: Dodopayments::Currency,
        customer: Dodopayments::Invoice::Customer,
        discount_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        editable_fields: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::EditableField]),
        frequency: Dodopayments::Invoice::Frequency,
        invoice_id: String,
        metadata: Dodopayments::Internal::Type::Unknown,
        refund_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        retry_count: Integer,
        row_version: Integer,
        status: Dodopayments::InvoiceStatus,
        subscription_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        tags: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::Tag]),
        tax: Integer,
        total_amount: Integer,
        collection_method: Dodopayments::CollectionMethod | nil,
        due_at: Time | nil,
        dunning_state: Dodopayments::DunningState | nil,
        finalized_at: Time | nil,
        hosted_url: String | nil,
        lines: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::InvoiceLine]) | nil,
        memo: String | nil,
        next_reminder_at: Time | nil,
        next_retry_at: Time | nil,
        payment_terms_days: Integer | nil,
        payments: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Invoice::Payment]) | nil,
        pdf_url: String | nil,
        reminder_settings: Dodopayments::Invoice::ReminderSettings | nil,
        review_deadline: Time | nil,
        sent_at: Time | nil
      }
    end
  end

  def test_create_hosted_link
    response = @dodo_payments.invoices.create_hosted_link("invoice_id")

    assert_pattern do
      response => Dodopayments::Models::InvoiceCreateHostedLinkResponse
    end

    assert_pattern do
      response => {
        expires_at: Time,
        hosted_url: String
      }
    end
  end

  def test_duplicate
    response = @dodo_payments.invoices.duplicate("invoice_id")

    assert_pattern do
      response => Dodopayments::Invoice
    end

    assert_pattern do
      response => {
        allowed_actions: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::AllowedAction]),
        amount_due: Integer,
        amount_paid: Integer,
        amount_refunded: Integer,
        billing_mode: Dodopayments::Invoice::BillingMode,
        business_id: String,
        created_at: Time,
        credits: Integer,
        currency: Dodopayments::Currency,
        customer: Dodopayments::Invoice::Customer,
        discount_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        editable_fields: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::EditableField]),
        frequency: Dodopayments::Invoice::Frequency,
        invoice_id: String,
        metadata: Dodopayments::Internal::Type::Unknown,
        refund_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        retry_count: Integer,
        row_version: Integer,
        status: Dodopayments::InvoiceStatus,
        subscription_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        tags: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::Tag]),
        tax: Integer,
        total_amount: Integer,
        collection_method: Dodopayments::CollectionMethod | nil,
        due_at: Time | nil,
        dunning_state: Dodopayments::DunningState | nil,
        finalized_at: Time | nil,
        hosted_url: String | nil,
        lines: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::InvoiceLine]) | nil,
        memo: String | nil,
        next_reminder_at: Time | nil,
        next_retry_at: Time | nil,
        payment_terms_days: Integer | nil,
        payments: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Invoice::Payment]) | nil,
        pdf_url: String | nil,
        reminder_settings: Dodopayments::Invoice::ReminderSettings | nil,
        review_deadline: Time | nil,
        sent_at: Time | nil
      }
    end
  end

  def test_finalize_required_params
    response = @dodo_payments.invoices.finalize("invoice_id", if_match: "If-Match")

    assert_pattern do
      response => Dodopayments::Invoice
    end

    assert_pattern do
      response => {
        allowed_actions: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::AllowedAction]),
        amount_due: Integer,
        amount_paid: Integer,
        amount_refunded: Integer,
        billing_mode: Dodopayments::Invoice::BillingMode,
        business_id: String,
        created_at: Time,
        credits: Integer,
        currency: Dodopayments::Currency,
        customer: Dodopayments::Invoice::Customer,
        discount_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        editable_fields: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::EditableField]),
        frequency: Dodopayments::Invoice::Frequency,
        invoice_id: String,
        metadata: Dodopayments::Internal::Type::Unknown,
        refund_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        retry_count: Integer,
        row_version: Integer,
        status: Dodopayments::InvoiceStatus,
        subscription_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        tags: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::Tag]),
        tax: Integer,
        total_amount: Integer,
        collection_method: Dodopayments::CollectionMethod | nil,
        due_at: Time | nil,
        dunning_state: Dodopayments::DunningState | nil,
        finalized_at: Time | nil,
        hosted_url: String | nil,
        lines: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::InvoiceLine]) | nil,
        memo: String | nil,
        next_reminder_at: Time | nil,
        next_retry_at: Time | nil,
        payment_terms_days: Integer | nil,
        payments: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Invoice::Payment]) | nil,
        pdf_url: String | nil,
        reminder_settings: Dodopayments::Invoice::ReminderSettings | nil,
        review_deadline: Time | nil,
        sent_at: Time | nil
      }
    end
  end

  def test_list_events
    response = @dodo_payments.invoices.list_events("invoice_id")

    assert_pattern do
      response => Dodopayments::Models::InvoiceListEventsResponse
    end

    assert_pattern do
      response => {
        items: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::InvoiceEvent])
      }
    end
  end

  def test_mark_uncollectable_required_params
    response = @dodo_payments.invoices.mark_uncollectable("invoice_id", if_match: "If-Match")

    assert_pattern do
      response => Dodopayments::Invoice
    end

    assert_pattern do
      response => {
        allowed_actions: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::AllowedAction]),
        amount_due: Integer,
        amount_paid: Integer,
        amount_refunded: Integer,
        billing_mode: Dodopayments::Invoice::BillingMode,
        business_id: String,
        created_at: Time,
        credits: Integer,
        currency: Dodopayments::Currency,
        customer: Dodopayments::Invoice::Customer,
        discount_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        editable_fields: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::EditableField]),
        frequency: Dodopayments::Invoice::Frequency,
        invoice_id: String,
        metadata: Dodopayments::Internal::Type::Unknown,
        refund_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        retry_count: Integer,
        row_version: Integer,
        status: Dodopayments::InvoiceStatus,
        subscription_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        tags: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::Tag]),
        tax: Integer,
        total_amount: Integer,
        collection_method: Dodopayments::CollectionMethod | nil,
        due_at: Time | nil,
        dunning_state: Dodopayments::DunningState | nil,
        finalized_at: Time | nil,
        hosted_url: String | nil,
        lines: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::InvoiceLine]) | nil,
        memo: String | nil,
        next_reminder_at: Time | nil,
        next_retry_at: Time | nil,
        payment_terms_days: Integer | nil,
        payments: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Invoice::Payment]) | nil,
        pdf_url: String | nil,
        reminder_settings: Dodopayments::Invoice::ReminderSettings | nil,
        review_deadline: Time | nil,
        sent_at: Time | nil
      }
    end
  end

  def test_preview_required_params
    response =
      @dodo_payments.invoices.preview(
        collection_method: :auto_charge,
        currency: :AED,
        customer_id: "customer_id",
        items: [{description: "description", kind: :custom, tax_category: :digital_products, unit_amount: 0}]
      )

    assert_pattern do
      response => nil
    end
  end

  def test_preview_existing
    response = @dodo_payments.invoices.preview_existing("invoice_id")

    assert_pattern do
      response => nil
    end
  end

  def test_retry__required_params
    response = @dodo_payments.invoices.retry_("invoice_id", if_match: "If-Match")

    assert_pattern do
      response => Dodopayments::Invoice
    end

    assert_pattern do
      response => {
        allowed_actions: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::AllowedAction]),
        amount_due: Integer,
        amount_paid: Integer,
        amount_refunded: Integer,
        billing_mode: Dodopayments::Invoice::BillingMode,
        business_id: String,
        created_at: Time,
        credits: Integer,
        currency: Dodopayments::Currency,
        customer: Dodopayments::Invoice::Customer,
        discount_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        editable_fields: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::EditableField]),
        frequency: Dodopayments::Invoice::Frequency,
        invoice_id: String,
        metadata: Dodopayments::Internal::Type::Unknown,
        refund_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        retry_count: Integer,
        row_version: Integer,
        status: Dodopayments::InvoiceStatus,
        subscription_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        tags: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::Tag]),
        tax: Integer,
        total_amount: Integer,
        collection_method: Dodopayments::CollectionMethod | nil,
        due_at: Time | nil,
        dunning_state: Dodopayments::DunningState | nil,
        finalized_at: Time | nil,
        hosted_url: String | nil,
        lines: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::InvoiceLine]) | nil,
        memo: String | nil,
        next_reminder_at: Time | nil,
        next_retry_at: Time | nil,
        payment_terms_days: Integer | nil,
        payments: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Invoice::Payment]) | nil,
        pdf_url: String | nil,
        reminder_settings: Dodopayments::Invoice::ReminderSettings | nil,
        review_deadline: Time | nil,
        sent_at: Time | nil
      }
    end
  end

  def test_send__required_params
    response = @dodo_payments.invoices.send_("invoice_id", if_match: "If-Match")

    assert_pattern do
      response => Dodopayments::Invoice
    end

    assert_pattern do
      response => {
        allowed_actions: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::AllowedAction]),
        amount_due: Integer,
        amount_paid: Integer,
        amount_refunded: Integer,
        billing_mode: Dodopayments::Invoice::BillingMode,
        business_id: String,
        created_at: Time,
        credits: Integer,
        currency: Dodopayments::Currency,
        customer: Dodopayments::Invoice::Customer,
        discount_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        editable_fields: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::EditableField]),
        frequency: Dodopayments::Invoice::Frequency,
        invoice_id: String,
        metadata: Dodopayments::Internal::Type::Unknown,
        refund_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        retry_count: Integer,
        row_version: Integer,
        status: Dodopayments::InvoiceStatus,
        subscription_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        tags: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::Tag]),
        tax: Integer,
        total_amount: Integer,
        collection_method: Dodopayments::CollectionMethod | nil,
        due_at: Time | nil,
        dunning_state: Dodopayments::DunningState | nil,
        finalized_at: Time | nil,
        hosted_url: String | nil,
        lines: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::InvoiceLine]) | nil,
        memo: String | nil,
        next_reminder_at: Time | nil,
        next_retry_at: Time | nil,
        payment_terms_days: Integer | nil,
        payments: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Invoice::Payment]) | nil,
        pdf_url: String | nil,
        reminder_settings: Dodopayments::Invoice::ReminderSettings | nil,
        review_deadline: Time | nil,
        sent_at: Time | nil
      }
    end
  end

  def test_update_dunning_required_params
    response = @dodo_payments.invoices.update_dunning("invoice_id", action: :pause, if_match: "If-Match")

    assert_pattern do
      response => Dodopayments::Invoice
    end

    assert_pattern do
      response => {
        allowed_actions: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::AllowedAction]),
        amount_due: Integer,
        amount_paid: Integer,
        amount_refunded: Integer,
        billing_mode: Dodopayments::Invoice::BillingMode,
        business_id: String,
        created_at: Time,
        credits: Integer,
        currency: Dodopayments::Currency,
        customer: Dodopayments::Invoice::Customer,
        discount_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        editable_fields: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::EditableField]),
        frequency: Dodopayments::Invoice::Frequency,
        invoice_id: String,
        metadata: Dodopayments::Internal::Type::Unknown,
        refund_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        retry_count: Integer,
        row_version: Integer,
        status: Dodopayments::InvoiceStatus,
        subscription_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        tags: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::Tag]),
        tax: Integer,
        total_amount: Integer,
        collection_method: Dodopayments::CollectionMethod | nil,
        due_at: Time | nil,
        dunning_state: Dodopayments::DunningState | nil,
        finalized_at: Time | nil,
        hosted_url: String | nil,
        lines: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::InvoiceLine]) | nil,
        memo: String | nil,
        next_reminder_at: Time | nil,
        next_retry_at: Time | nil,
        payment_terms_days: Integer | nil,
        payments: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Invoice::Payment]) | nil,
        pdf_url: String | nil,
        reminder_settings: Dodopayments::Invoice::ReminderSettings | nil,
        review_deadline: Time | nil,
        sent_at: Time | nil
      }
    end
  end

  def test_void_required_params
    response = @dodo_payments.invoices.void("invoice_id", if_match: "If-Match")

    assert_pattern do
      response => Dodopayments::Invoice
    end

    assert_pattern do
      response => {
        allowed_actions: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::AllowedAction]),
        amount_due: Integer,
        amount_paid: Integer,
        amount_refunded: Integer,
        billing_mode: Dodopayments::Invoice::BillingMode,
        business_id: String,
        created_at: Time,
        credits: Integer,
        currency: Dodopayments::Currency,
        customer: Dodopayments::Invoice::Customer,
        discount_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        editable_fields: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::EditableField]),
        frequency: Dodopayments::Invoice::Frequency,
        invoice_id: String,
        metadata: Dodopayments::Internal::Type::Unknown,
        refund_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        retry_count: Integer,
        row_version: Integer,
        status: Dodopayments::InvoiceStatus,
        subscription_ids: ^(Dodopayments::Internal::Type::ArrayOf[String]),
        tags: ^(Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Invoice::Tag]),
        tax: Integer,
        total_amount: Integer,
        collection_method: Dodopayments::CollectionMethod | nil,
        due_at: Time | nil,
        dunning_state: Dodopayments::DunningState | nil,
        finalized_at: Time | nil,
        hosted_url: String | nil,
        lines: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::InvoiceLine]) | nil,
        memo: String | nil,
        next_reminder_at: Time | nil,
        next_retry_at: Time | nil,
        payment_terms_days: Integer | nil,
        payments: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Invoice::Payment]) | nil,
        pdf_url: String | nil,
        reminder_settings: Dodopayments::Invoice::ReminderSettings | nil,
        review_deadline: Time | nil,
        sent_at: Time | nil
      }
    end
  end
end
