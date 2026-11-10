# typed: strong

module Dodopayments
  module Resources
    class Invoices
      sig { returns(Dodopayments::Resources::Invoices::Payments) }
      attr_reader :payments

      # Creates a draft. A repeat with the same `Idempotency-Key` returns the first
      # draft.
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
                Dodopayments::InvoiceCreateParams::PaymentTerms::Type::OrHash,
                Dodopayments::InvoiceCreateParams::PaymentTerms::UnionMember1::OrHash
              )
            ),
          review_required: T::Boolean,
          tax_id: T.nilable(String),
          idempotency_key: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Invoice)
      end
      def create(
        # Body param
        collection_method:,
        # Body param
        currency:,
        # Body param
        customer_id:,
        # Body param: 1 to 50 items.
        items:,
        # Body param: The billing address of an invoice request.
        billing_address: nil,
        # Body param: 10 addresses or fewer.
        cc_emails: nil,
        # Body param: The customer email is used when this is not set.
        customer_email: nil,
        # Body param: 20 codes or fewer.
        discount_ids: nil,
        # Body param: A custom due date. Do not send it with `payment_terms`.
        due_at: nil,
        # Body param: The reminder override of one invoice. The business settings fill the
        # other dunning values.
        dunning: nil,
        # Body param
        memo: nil,
        # Body param: Arbitrary key-value metadata. Values can be string, integer, number,
        # or boolean.
        metadata: nil,
        # Body param: Do not send it with `due_at`.
        payment_terms: nil,
        # Body param: `true` keeps a renewal draft for review before it finalises.
        review_required: nil,
        # Body param
        tax_id: nil,
        # Header param: A key of 1 to 255 characters. A repeat with the same key returns
        # the first draft.
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Get an invoice
      sig do
        params(
          invoice_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Invoice)
      end
      def retrieve(
        # Invoice ID
        invoice_id,
        request_options: {}
      )
      end

      # Changes only the sent fields. `null` clears a field that can be empty.
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
                Dodopayments::InvoiceUpdateParams::PaymentTerms::Type::OrHash,
                Dodopayments::InvoiceUpdateParams::PaymentTerms::UnionMember1::OrHash
              )
            ),
          review_required: T.nilable(T::Boolean),
          tax_id: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Invoice)
      end
      def update(
        # Path param: Invoice ID
        invoice_id,
        # Header param: The row_version of the invoice that the request changes.
        if_match:,
        # Body param: The billing address of an invoice request.
        billing_address: nil,
        # Body param: 10 addresses or fewer.
        cc_emails: nil,
        # Body param
        collection_method: nil,
        # Body param
        currency: nil,
        # Body param
        customer_email: nil,
        # Body param
        customer_id: nil,
        # Body param: 20 codes or fewer.
        discount_ids: nil,
        # Body param
        due_at: nil,
        # Body param: The reminder override of one invoice. The business settings fill the
        # other dunning values.
        dunning: nil,
        # Body param: 1 to 50 items.
        items: nil,
        # Body param
        memo: nil,
        # Body param: Arbitrary key-value metadata. Values can be string, integer, number,
        # or boolean.
        metadata: nil,
        # Body param
        payment_terms: nil,
        # Body param
        review_required: nil,
        # Body param
        tax_id: nil,
        request_options: {}
      )
      end

      # Lists invoice-led invoices, newest first. The items have no `lines` and no
      # `payments`.
      sig do
        params(
          collection_method:
            Dodopayments::InvoiceListParams::CollectionMethod::OrSymbol,
          created_at_gte: Time,
          created_at_lte: Time,
          customer_id: String,
          due_at_gte: Time,
          due_at_lte: Time,
          page_number: Integer,
          page_size: Integer,
          status: T::Array[Dodopayments::InvoiceListParams::Status::OrSymbol],
          subscription_id: String,
          tags: T::Array[Dodopayments::InvoiceListParams::Tag::OrSymbol],
          total_amount_gte: Integer,
          total_amount_lte: Integer,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(
          Dodopayments::Internal::DefaultPageNumberPagination[
            Dodopayments::Invoice
          ]
        )
      end
      def list(
        collection_method: nil,
        created_at_gte: nil,
        created_at_lte: nil,
        customer_id: nil,
        due_at_gte: nil,
        due_at_lte: nil,
        # Page number. The default is 0.
        page_number: nil,
        # Page size. The default is 10 and the maximum is 100.
        page_size: nil,
        # Repeat the key to match more than one status, for example
        # `status=open&status=past_due`.
        status: nil,
        subscription_id: nil,
        # Repeat the key to match an invoice that has any one of the tags.
        tags: nil,
        total_amount_gte: nil,
        total_amount_lte: nil,
        request_options: {}
      )
      end

      # Delete a draft invoice
      sig do
        params(
          invoice_id: String,
          if_match: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Invoice ID
        invoice_id,
        # The row_version of the invoice that the request changes.
        if_match:,
        request_options: {}
      )
      end

      # A note changes no field, so it needs no `If-Match`. The note shows in `/events`.
      sig do
        params(
          invoice_id: String,
          text: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Invoice)
      end
      def add_note(
        # Invoice ID
        invoice_id,
        text:,
        request_options: {}
      )
      end

      # Returns the page where the customer pays. A copied link counts as a send, so the
      # first call sets `sent_at`.
      sig do
        params(
          invoice_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Models::InvoiceCreateHostedLinkResponse)
      end
      def create_hosted_link(
        # Invoice ID
        invoice_id,
        request_options: {}
      )
      end

      # Copies the customer, the product lines, the terms and the recipients into a new
      # draft. Usage lines are not copied.
      sig do
        params(
          invoice_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Invoice)
      end
      def duplicate(
        # Invoice ID
        invoice_id,
        request_options: {}
      )
      end

      # Issues the draft. With `send: true`, the invoice email goes out after the issue.
      # A failed send keeps the invoice issued. Call `/send` again with the new `ETag`.
      sig do
        params(
          invoice_id: String,
          if_match: String,
          cc_emails: T.nilable(T::Array[String]),
          customer_email: T.nilable(String),
          send_: T::Boolean,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Invoice)
      end
      def finalize(
        # Path param: Invoice ID
        invoice_id,
        # Header param: The row_version of the invoice that the request changes.
        if_match:,
        # Body param: 10 addresses or fewer.
        cc_emails: nil,
        # Body param
        customer_email: nil,
        # Body param: `true` sends the invoice email after finalise.
        send_: nil,
        request_options: {}
      )
      end

      # Returns the change history of the invoice, oldest first.
      sig do
        params(
          invoice_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Models::InvoiceListEventsResponse)
      end
      def list_events(
        # Invoice ID
        invoice_id,
        request_options: {}
      )
      end

      # Mark an invoice uncollectable
      sig do
        params(
          invoice_id: String,
          if_match: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Invoice)
      end
      def mark_uncollectable(
        # Invoice ID
        invoice_id,
        # The row_version of the invoice that the request changes.
        if_match:,
        request_options: {}
      )
      end

      # Prices the body as a draft and returns it. No row is saved.
      sig do
        params(
          collection_method: Dodopayments::CollectionMethod::OrSymbol,
          currency: Dodopayments::Currency::OrSymbol,
          customer_id: String,
          items:
            T::Array[
              T.any(
                Dodopayments::InvoicePreviewParams::Item::CustomItem::OrHash,
                Dodopayments::InvoicePreviewParams::Item::ProductItem::OrHash
              )
            ],
          format_: Dodopayments::InvoicePreviewParams::Format::OrSymbol,
          billing_address:
            T.nilable(
              Dodopayments::InvoicePreviewParams::BillingAddress::OrHash
            ),
          cc_emails: T.nilable(T::Array[String]),
          customer_email: T.nilable(String),
          discount_ids: T.nilable(T::Array[String]),
          due_at: T.nilable(Time),
          dunning:
            T.nilable(Dodopayments::InvoicePreviewParams::Dunning::OrHash),
          memo: T.nilable(String),
          metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants],
          payment_terms:
            T.nilable(
              T.any(
                Dodopayments::InvoicePreviewParams::PaymentTerms::Type::OrHash,
                Dodopayments::InvoicePreviewParams::PaymentTerms::UnionMember1::OrHash
              )
            ),
          review_required: T::Boolean,
          tax_id: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def preview(
        # Body param
        collection_method:,
        # Body param
        currency:,
        # Body param
        customer_id:,
        # Body param: 1 to 50 items.
        items:,
        # Query param: The preview body. `json` returns the invoice JSON. `pdf` returns
        # the PDF with a draft mark. `email` returns the HTML of the invoice email. A
        # preview saves no row.
        format_: nil,
        # Body param: The billing address of an invoice request.
        billing_address: nil,
        # Body param: 10 addresses or fewer.
        cc_emails: nil,
        # Body param: The customer email is used when this is not set.
        customer_email: nil,
        # Body param: 20 codes or fewer.
        discount_ids: nil,
        # Body param: A custom due date. Do not send it with `payment_terms`.
        due_at: nil,
        # Body param: The reminder override of one invoice. The business settings fill the
        # other dunning values.
        dunning: nil,
        # Body param
        memo: nil,
        # Body param: Arbitrary key-value metadata. Values can be string, integer, number,
        # or boolean.
        metadata: nil,
        # Body param: Do not send it with `due_at`.
        payment_terms: nil,
        # Body param: `true` keeps a renewal draft for review before it finalises.
        review_required: nil,
        # Body param
        tax_id: nil,
        request_options: {}
      )
      end

      # Preview a draft invoice
      sig do
        params(
          invoice_id: String,
          format_: Dodopayments::InvoicePreviewExistingParams::Format::OrSymbol,
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def preview_existing(
        # Invoice ID
        invoice_id,
        # The preview body. `json` returns the invoice JSON. `pdf` returns the PDF with a
        # draft mark. `email` returns the HTML of the invoice email. A preview saves no
        # row.
        format_: nil,
        request_options: {}
      )
      end

      # Charges the saved payment method of the invoice subscription now.
      sig do
        params(
          invoice_id: String,
          if_match: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Invoice)
      end
      def retry_(
        # Invoice ID
        invoice_id,
        # The row_version of the invoice that the request changes.
        if_match:,
        request_options: {}
      )
      end

      # Emails the invoice to the customer email and the CC emails.
      sig do
        params(
          invoice_id: String,
          if_match: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Invoice)
      end
      def send_(
        # Invoice ID
        invoice_id,
        # The row_version of the invoice that the request changes.
        if_match:,
        request_options: {}
      )
      end

      # Pauses, resumes or moves the reminders of an open or past-due invoice.
      sig do
        params(
          invoice_id: String,
          action: Dodopayments::InvoiceUpdateDunningParams::Action::OrSymbol,
          if_match: String,
          offsets_days: T.nilable(T::Array[Integer]),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Invoice)
      end
      def update_dunning(
        # Path param: Invoice ID
        invoice_id,
        # Body param
        action:,
        # Header param: The row_version of the invoice that the request changes.
        if_match:,
        # Body param: Needed for `reschedule`. Days from the due date.
        offsets_days: nil,
        request_options: {}
      )
      end

      # Closes an open or past-due invoice. Applied credits go back to the customer
      # wallet.
      sig do
        params(
          invoice_id: String,
          if_match: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Invoice)
      end
      def void(
        # Invoice ID
        invoice_id,
        # The row_version of the invoice that the request changes.
        if_match:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
