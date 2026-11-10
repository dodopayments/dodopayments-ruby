# frozen_string_literal: true

module Dodopayments
  module Resources
    class Invoices
      # @return [Dodopayments::Resources::Invoices::Payments]
      attr_reader :payments

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::InvoiceCreateParams} for more details.
      #
      # Creates a draft. A repeat with the same `Idempotency-Key` returns the first
      # draft.
      #
      # @overload create(collection_method:, currency:, customer_id:, items:, billing_address: nil, cc_emails: nil, customer_email: nil, discount_ids: nil, due_at: nil, dunning: nil, memo: nil, metadata: nil, payment_terms: nil, review_required: nil, tax_id: nil, idempotency_key: nil, request_options: {})
      #
      # @param collection_method [Symbol, Dodopayments::Models::CollectionMethod] Body param
      #
      # @param currency [Symbol, Dodopayments::Models::Currency] Body param
      #
      # @param customer_id [String] Body param
      #
      # @param items [Array<Dodopayments::Models::InvoiceCreateParams::Item::CustomItem, Dodopayments::Models::InvoiceCreateParams::Item::ProductItem>] Body param: 1 to 50 items.
      #
      # @param billing_address [Dodopayments::Models::InvoiceCreateParams::BillingAddress, nil] Body param: The billing address of an invoice request.
      #
      # @param cc_emails [Array<String>, nil] Body param: 10 addresses or fewer.
      #
      # @param customer_email [String, nil] Body param: The customer email is used when this is not set.
      #
      # @param discount_ids [Array<String>, nil] Body param: 20 codes or fewer.
      #
      # @param due_at [Time, nil] Body param: A custom due date. Do not send it with `payment_terms`.
      #
      # @param dunning [Dodopayments::Models::InvoiceCreateParams::Dunning, nil] Body param: The reminder override of one invoice. The business settings fill the
      #
      # @param memo [String, nil] Body param
      #
      # @param metadata [Hash{Symbol=>String, Float, Boolean}] Body param: Arbitrary key-value metadata. Values can be string, integer, number,
      #
      # @param payment_terms [Dodopayments::Models::InvoiceCreateParams::PaymentTerms::Type, Dodopayments::Models::InvoiceCreateParams::PaymentTerms::UnionMember1, nil] Body param: Do not send it with `due_at`.
      #
      # @param review_required [Boolean] Body param: `true` keeps a renewal draft for review before it finalises.
      #
      # @param tax_id [String, nil] Body param
      #
      # @param idempotency_key [String] Header param: A key of 1 to 255 characters. A repeat with the same key returns t
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Invoice]
      #
      # @see Dodopayments::Models::InvoiceCreateParams
      def create(params)
        parsed, options = Dodopayments::InvoiceCreateParams.dump_request(params)
        header_params = {idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "billing/invoices",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Dodopayments::Invoice,
          options: options
        )
      end

      # Get an invoice
      #
      # @overload retrieve(invoice_id, request_options: {})
      #
      # @param invoice_id [String] Invoice ID
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Invoice]
      #
      # @see Dodopayments::Models::InvoiceRetrieveParams
      def retrieve(invoice_id, params = {})
        @client.request(
          method: :get,
          path: ["billing/invoices/%1$s", invoice_id],
          model: Dodopayments::Invoice,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::InvoiceUpdateParams} for more details.
      #
      # Changes only the sent fields. `null` clears a field that can be empty.
      #
      # @overload update(invoice_id, if_match:, billing_address: nil, cc_emails: nil, collection_method: nil, currency: nil, customer_email: nil, customer_id: nil, discount_ids: nil, due_at: nil, dunning: nil, items: nil, memo: nil, metadata: nil, payment_terms: nil, review_required: nil, tax_id: nil, request_options: {})
      #
      # @param invoice_id [String] Path param: Invoice ID
      #
      # @param if_match [String] Header param: The row_version of the invoice that the request changes.
      #
      # @param billing_address [Dodopayments::Models::InvoiceUpdateParams::BillingAddress, nil] Body param: The billing address of an invoice request.
      #
      # @param cc_emails [Array<String>, nil] Body param: 10 addresses or fewer.
      #
      # @param collection_method [Symbol, Dodopayments::Models::CollectionMethod, nil] Body param
      #
      # @param currency [Symbol, Dodopayments::Models::Currency, nil] Body param
      #
      # @param customer_email [String, nil] Body param
      #
      # @param customer_id [String, nil] Body param
      #
      # @param discount_ids [Array<String>, nil] Body param: 20 codes or fewer.
      #
      # @param due_at [Time, nil] Body param
      #
      # @param dunning [Dodopayments::Models::InvoiceUpdateParams::Dunning, nil] Body param: The reminder override of one invoice. The business settings fill the
      #
      # @param items [Array<Dodopayments::Models::InvoiceUpdateParams::Item::CustomItem, Dodopayments::Models::InvoiceUpdateParams::Item::ProductItem>, nil] Body param: 1 to 50 items.
      #
      # @param memo [String, nil] Body param
      #
      # @param metadata [Hash{Symbol=>String, Float, Boolean}, nil] Body param: Arbitrary key-value metadata. Values can be string, integer, number,
      #
      # @param payment_terms [Dodopayments::Models::InvoiceUpdateParams::PaymentTerms::Type, Dodopayments::Models::InvoiceUpdateParams::PaymentTerms::UnionMember1, nil] Body param
      #
      # @param review_required [Boolean, nil] Body param
      #
      # @param tax_id [String, nil] Body param
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Invoice]
      #
      # @see Dodopayments::Models::InvoiceUpdateParams
      def update(invoice_id, params)
        parsed, options = Dodopayments::InvoiceUpdateParams.dump_request(params)
        header_params = {if_match: "if-match"}
        @client.request(
          method: :patch,
          path: ["billing/invoices/%1$s", invoice_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Dodopayments::Invoice,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::InvoiceListParams} for more details.
      #
      # Lists invoice-led invoices, newest first. The items have no `lines` and no
      # `payments`.
      #
      # @overload list(collection_method: nil, created_at_gte: nil, created_at_lte: nil, customer_id: nil, due_at_gte: nil, due_at_lte: nil, page_number: nil, page_size: nil, status: nil, subscription_id: nil, tags: nil, total_amount_gte: nil, total_amount_lte: nil, request_options: {})
      #
      # @param collection_method [Symbol, Dodopayments::Models::InvoiceListParams::CollectionMethod]
      #
      # @param created_at_gte [Time]
      #
      # @param created_at_lte [Time]
      #
      # @param customer_id [String]
      #
      # @param due_at_gte [Time]
      #
      # @param due_at_lte [Time]
      #
      # @param page_number [Integer] Page number. The default is 0.
      #
      # @param page_size [Integer] Page size. The default is 10 and the maximum is 100.
      #
      # @param status [Array<Symbol, Dodopayments::Models::InvoiceListParams::Status>] Repeat the key to match more than one status, for example `status=open&status=pa
      #
      # @param subscription_id [String]
      #
      # @param tags [Array<Symbol, Dodopayments::Models::InvoiceListParams::Tag>] Repeat the key to match an invoice that has any one of the tags.
      #
      # @param total_amount_gte [Integer]
      #
      # @param total_amount_lte [Integer]
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::Invoice>]
      #
      # @see Dodopayments::Models::InvoiceListParams
      def list(params = {})
        parsed, options = Dodopayments::InvoiceListParams.dump_request(params)
        query = Dodopayments::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "billing/invoices",
          query: query,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::Invoice,
          options: options
        )
      end

      # Delete a draft invoice
      #
      # @overload delete(invoice_id, if_match:, request_options: {})
      #
      # @param invoice_id [String] Invoice ID
      #
      # @param if_match [String] The row_version of the invoice that the request changes.
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dodopayments::Models::InvoiceDeleteParams
      def delete(invoice_id, params)
        parsed, options = Dodopayments::InvoiceDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["billing/invoices/%1$s", invoice_id],
          headers: parsed.transform_keys(if_match: "if-match"),
          model: NilClass,
          options: options
        )
      end

      # A note changes no field, so it needs no `If-Match`. The note shows in `/events`.
      #
      # @overload add_note(invoice_id, text:, request_options: {})
      #
      # @param invoice_id [String] Invoice ID
      #
      # @param text [String]
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Invoice]
      #
      # @see Dodopayments::Models::InvoiceAddNoteParams
      def add_note(invoice_id, params)
        parsed, options = Dodopayments::InvoiceAddNoteParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["billing/invoices/%1$s/notes", invoice_id],
          body: parsed,
          model: Dodopayments::Invoice,
          options: options
        )
      end

      # Returns the page where the customer pays. A copied link counts as a send, so the
      # first call sets `sent_at`.
      #
      # @overload create_hosted_link(invoice_id, request_options: {})
      #
      # @param invoice_id [String] Invoice ID
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::InvoiceCreateHostedLinkResponse]
      #
      # @see Dodopayments::Models::InvoiceCreateHostedLinkParams
      def create_hosted_link(invoice_id, params = {})
        @client.request(
          method: :post,
          path: ["billing/invoices/%1$s/hosted-link", invoice_id],
          model: Dodopayments::Models::InvoiceCreateHostedLinkResponse,
          options: params[:request_options]
        )
      end

      # Copies the customer, the product lines, the terms and the recipients into a new
      # draft. Usage lines are not copied.
      #
      # @overload duplicate(invoice_id, request_options: {})
      #
      # @param invoice_id [String] Invoice ID
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Invoice]
      #
      # @see Dodopayments::Models::InvoiceDuplicateParams
      def duplicate(invoice_id, params = {})
        @client.request(
          method: :post,
          path: ["billing/invoices/%1$s/duplicate", invoice_id],
          model: Dodopayments::Invoice,
          options: params[:request_options]
        )
      end

      # Issues the draft. With `send: true`, the invoice email goes out after the issue.
      # A failed send keeps the invoice issued. Call `/send` again with the new `ETag`.
      #
      # @overload finalize(invoice_id, if_match:, cc_emails: nil, customer_email: nil, send_: nil, request_options: {})
      #
      # @param invoice_id [String] Path param: Invoice ID
      #
      # @param if_match [String] Header param: The row_version of the invoice that the request changes.
      #
      # @param cc_emails [Array<String>, nil] Body param: 10 addresses or fewer.
      #
      # @param customer_email [String, nil] Body param
      #
      # @param send_ [Boolean] Body param: `true` sends the invoice email after finalise.
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Invoice]
      #
      # @see Dodopayments::Models::InvoiceFinalizeParams
      def finalize(invoice_id, params)
        parsed, options = Dodopayments::InvoiceFinalizeParams.dump_request(params)
        header_params = {if_match: "if-match"}
        @client.request(
          method: :post,
          path: ["billing/invoices/%1$s/finalize", invoice_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Dodopayments::Invoice,
          options: options
        )
      end

      # Returns the change history of the invoice, oldest first.
      #
      # @overload list_events(invoice_id, request_options: {})
      #
      # @param invoice_id [String] Invoice ID
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::InvoiceListEventsResponse]
      #
      # @see Dodopayments::Models::InvoiceListEventsParams
      def list_events(invoice_id, params = {})
        @client.request(
          method: :get,
          path: ["billing/invoices/%1$s/events", invoice_id],
          model: Dodopayments::Models::InvoiceListEventsResponse,
          options: params[:request_options]
        )
      end

      # Mark an invoice uncollectable
      #
      # @overload mark_uncollectable(invoice_id, if_match:, request_options: {})
      #
      # @param invoice_id [String] Invoice ID
      #
      # @param if_match [String] The row_version of the invoice that the request changes.
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Invoice]
      #
      # @see Dodopayments::Models::InvoiceMarkUncollectableParams
      def mark_uncollectable(invoice_id, params)
        parsed, options = Dodopayments::InvoiceMarkUncollectableParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["billing/invoices/%1$s/mark-uncollectable", invoice_id],
          headers: parsed.transform_keys(if_match: "if-match"),
          model: Dodopayments::Invoice,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::InvoicePreviewParams} for more details.
      #
      # Prices the body as a draft and returns it. No row is saved.
      #
      # @overload preview(collection_method:, currency:, customer_id:, items:, format_: nil, billing_address: nil, cc_emails: nil, customer_email: nil, discount_ids: nil, due_at: nil, dunning: nil, memo: nil, metadata: nil, payment_terms: nil, review_required: nil, tax_id: nil, request_options: {})
      #
      # @param collection_method [Symbol, Dodopayments::Models::CollectionMethod] Body param
      #
      # @param currency [Symbol, Dodopayments::Models::Currency] Body param
      #
      # @param customer_id [String] Body param
      #
      # @param items [Array<Dodopayments::Models::InvoicePreviewParams::Item::CustomItem, Dodopayments::Models::InvoicePreviewParams::Item::ProductItem>] Body param: 1 to 50 items.
      #
      # @param format_ [Symbol, Dodopayments::Models::InvoicePreviewParams::Format] Query param: The preview body. `json` returns the invoice JSON. `pdf` returns th
      #
      # @param billing_address [Dodopayments::Models::InvoicePreviewParams::BillingAddress, nil] Body param: The billing address of an invoice request.
      #
      # @param cc_emails [Array<String>, nil] Body param: 10 addresses or fewer.
      #
      # @param customer_email [String, nil] Body param: The customer email is used when this is not set.
      #
      # @param discount_ids [Array<String>, nil] Body param: 20 codes or fewer.
      #
      # @param due_at [Time, nil] Body param: A custom due date. Do not send it with `payment_terms`.
      #
      # @param dunning [Dodopayments::Models::InvoicePreviewParams::Dunning, nil] Body param: The reminder override of one invoice. The business settings fill the
      #
      # @param memo [String, nil] Body param
      #
      # @param metadata [Hash{Symbol=>String, Float, Boolean}] Body param: Arbitrary key-value metadata. Values can be string, integer, number,
      #
      # @param payment_terms [Dodopayments::Models::InvoicePreviewParams::PaymentTerms::Type, Dodopayments::Models::InvoicePreviewParams::PaymentTerms::UnionMember1, nil] Body param: Do not send it with `due_at`.
      #
      # @param review_required [Boolean] Body param: `true` keeps a renewal draft for review before it finalises.
      #
      # @param tax_id [String, nil] Body param
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dodopayments::Models::InvoicePreviewParams
      def preview(params)
        query_params = [:format_]
        parsed, options = Dodopayments::InvoicePreviewParams.dump_request(params)
        query = Dodopayments::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :post,
          path: "billing/invoices/preview",
          query: query.transform_keys(format_: "format"),
          body: parsed.except(*query_params),
          model: NilClass,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::InvoicePreviewExistingParams} for more details.
      #
      # Preview a draft invoice
      #
      # @overload preview_existing(invoice_id, format_: nil, request_options: {})
      #
      # @param invoice_id [String] Invoice ID
      #
      # @param format_ [Symbol, Dodopayments::Models::InvoicePreviewExistingParams::Format] The preview body. `json` returns the invoice JSON. `pdf` returns the PDF with a
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dodopayments::Models::InvoicePreviewExistingParams
      def preview_existing(invoice_id, params = {})
        parsed, options = Dodopayments::InvoicePreviewExistingParams.dump_request(params)
        query = Dodopayments::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["billing/invoices/%1$s/preview", invoice_id],
          query: query.transform_keys(format_: "format"),
          model: NilClass,
          options: options
        )
      end

      # Charges the saved payment method of the invoice subscription now.
      #
      # @overload retry_(invoice_id, if_match:, request_options: {})
      #
      # @param invoice_id [String] Invoice ID
      #
      # @param if_match [String] The row_version of the invoice that the request changes.
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Invoice]
      #
      # @see Dodopayments::Models::InvoiceRetryParams
      def retry_(invoice_id, params)
        parsed, options = Dodopayments::InvoiceRetryParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["billing/invoices/%1$s/retry", invoice_id],
          headers: parsed.transform_keys(if_match: "if-match"),
          model: Dodopayments::Invoice,
          options: options
        )
      end

      # Emails the invoice to the customer email and the CC emails.
      #
      # @overload send_(invoice_id, if_match:, request_options: {})
      #
      # @param invoice_id [String] Invoice ID
      #
      # @param if_match [String] The row_version of the invoice that the request changes.
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Invoice]
      #
      # @see Dodopayments::Models::InvoiceSendParams
      def send_(invoice_id, params)
        parsed, options = Dodopayments::InvoiceSendParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["billing/invoices/%1$s/send", invoice_id],
          headers: parsed.transform_keys(if_match: "if-match"),
          model: Dodopayments::Invoice,
          options: options
        )
      end

      # Pauses, resumes or moves the reminders of an open or past-due invoice.
      #
      # @overload update_dunning(invoice_id, action:, if_match:, offsets_days: nil, request_options: {})
      #
      # @param invoice_id [String] Path param: Invoice ID
      #
      # @param action [Symbol, Dodopayments::Models::InvoiceUpdateDunningParams::Action] Body param
      #
      # @param if_match [String] Header param: The row_version of the invoice that the request changes.
      #
      # @param offsets_days [Array<Integer>, nil] Body param: Needed for `reschedule`. Days from the due date.
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Invoice]
      #
      # @see Dodopayments::Models::InvoiceUpdateDunningParams
      def update_dunning(invoice_id, params)
        parsed, options = Dodopayments::InvoiceUpdateDunningParams.dump_request(params)
        header_params = {if_match: "if-match"}
        @client.request(
          method: :post,
          path: ["billing/invoices/%1$s/dunning", invoice_id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Dodopayments::Invoice,
          options: options
        )
      end

      # Closes an open or past-due invoice. Applied credits go back to the customer
      # wallet.
      #
      # @overload void(invoice_id, if_match:, request_options: {})
      #
      # @param invoice_id [String] Invoice ID
      #
      # @param if_match [String] The row_version of the invoice that the request changes.
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Invoice]
      #
      # @see Dodopayments::Models::InvoiceVoidParams
      def void(invoice_id, params)
        parsed, options = Dodopayments::InvoiceVoidParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["billing/invoices/%1$s/void", invoice_id],
          headers: parsed.transform_keys(if_match: "if-match"),
          model: Dodopayments::Invoice,
          options: options
        )
      end

      # @api private
      #
      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
        @payments = Dodopayments::Resources::Invoices::Payments.new(client: client)
      end
    end
  end
end
