# frozen_string_literal: true

# Standard libraries.
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"

# Gems.
require "connection_pool"

# Package files.
require_relative "dodopayments/version"
require_relative "dodopayments/util"
require_relative "dodopayments/extern"
require_relative "dodopayments/base_model"
require_relative "dodopayments/base_page"
require_relative "dodopayments/request_options"
require_relative "dodopayments/errors"
require_relative "dodopayments/base_client"
require_relative "dodopayments/pooled_net_requester"
require_relative "dodopayments/client"
require_relative "dodopayments/default_page_number_pagination"
require_relative "dodopayments/models/attach_existing_customer"
require_relative "dodopayments/models/billing_address"
require_relative "dodopayments/models/country_code"
require_relative "dodopayments/models/create_new_customer"
require_relative "dodopayments/models/customer"
require_relative "dodopayments/models/customer_create_params"
require_relative "dodopayments/models/customer_limited_details"
require_relative "dodopayments/models/customer_list_params"
require_relative "dodopayments/models/customer_portal_session"
require_relative "dodopayments/models/customer_request"
require_relative "dodopayments/models/customer_retrieve_params"
require_relative "dodopayments/models/customers/customer_portal_create_params"
require_relative "dodopayments/models/customer_update_params"
require_relative "dodopayments/models/discount"
require_relative "dodopayments/models/discount_create_params"
require_relative "dodopayments/models/discount_delete_params"
require_relative "dodopayments/models/discount_list_params"
require_relative "dodopayments/models/discount_retrieve_params"
require_relative "dodopayments/models/discount_type"
require_relative "dodopayments/models/discount_update_params"
require_relative "dodopayments/models/dispute"
require_relative "dodopayments/models/dispute_list_params"
require_relative "dodopayments/models/dispute_retrieve_params"
require_relative "dodopayments/models/dispute_stage"
require_relative "dodopayments/models/dispute_status"
require_relative "dodopayments/models/intent_status"
require_relative "dodopayments/models/invoices/payment_retrieve_params"
require_relative "dodopayments/models/license_activate_params"
require_relative "dodopayments/models/license_deactivate_params"
require_relative "dodopayments/models/license_key"
require_relative "dodopayments/models/license_key_duration"
require_relative "dodopayments/models/license_key_instance"
require_relative "dodopayments/models/license_key_instance_list_params"
require_relative "dodopayments/models/license_key_instance_retrieve_params"
require_relative "dodopayments/models/license_key_instance_update_params"
require_relative "dodopayments/models/license_key_list_params"
require_relative "dodopayments/models/license_key_retrieve_params"
require_relative "dodopayments/models/license_key_status"
require_relative "dodopayments/models/license_key_update_params"
require_relative "dodopayments/models/license_validate_params"
require_relative "dodopayments/models/license_validate_response"
require_relative "dodopayments/models/misc_list_supported_countries_params"
require_relative "dodopayments/models/misc_list_supported_countries_response"
require_relative "dodopayments/models/one_time_product_cart_item"
require_relative "dodopayments/models/payment"
require_relative "dodopayments/models/payment_create_params"
require_relative "dodopayments/models/payment_create_response"
require_relative "dodopayments/models/payment_list_params"
require_relative "dodopayments/models/payment_list_response"
require_relative "dodopayments/models/payment_retrieve_params"
require_relative "dodopayments/models/payout_list_params"
require_relative "dodopayments/models/payout_list_response"
require_relative "dodopayments/models/price"
require_relative "dodopayments/models/product"
require_relative "dodopayments/models/product_create_params"
require_relative "dodopayments/models/product_delete_params"
require_relative "dodopayments/models/product_list_params"
require_relative "dodopayments/models/product_list_response"
require_relative "dodopayments/models/product_retrieve_params"
require_relative "dodopayments/models/products/image_update_params"
require_relative "dodopayments/models/products/image_update_response"
require_relative "dodopayments/models/product_unarchive_params"
require_relative "dodopayments/models/product_update_params"
require_relative "dodopayments/models/refund"
require_relative "dodopayments/models/refund_create_params"
require_relative "dodopayments/models/refund_list_params"
require_relative "dodopayments/models/refund_retrieve_params"
require_relative "dodopayments/models/refund_status"
require_relative "dodopayments/models/subscription"
require_relative "dodopayments/models/subscription_create_params"
require_relative "dodopayments/models/subscription_create_response"
require_relative "dodopayments/models/subscription_list_params"
require_relative "dodopayments/models/subscription_retrieve_params"
require_relative "dodopayments/models/subscription_status"
require_relative "dodopayments/models/subscription_update_params"
require_relative "dodopayments/models/time_interval"
require_relative "dodopayments/models/webhook_event"
require_relative "dodopayments/models/webhook_event_list_params"
require_relative "dodopayments/models/webhook_event_retrieve_params"
require_relative "dodopayments/resources/customers"
require_relative "dodopayments/resources/customers/customer_portal"
require_relative "dodopayments/resources/discounts"
require_relative "dodopayments/resources/disputes"
require_relative "dodopayments/resources/invoices"
require_relative "dodopayments/resources/invoices/payments"
require_relative "dodopayments/resources/license_key_instances"
require_relative "dodopayments/resources/license_keys"
require_relative "dodopayments/resources/licenses"
require_relative "dodopayments/resources/misc"
require_relative "dodopayments/resources/payments"
require_relative "dodopayments/resources/payouts"
require_relative "dodopayments/resources/products"
require_relative "dodopayments/resources/products/images"
require_relative "dodopayments/resources/refunds"
require_relative "dodopayments/resources/subscriptions"
require_relative "dodopayments/resources/webhook_events"
