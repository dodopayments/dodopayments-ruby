# typed: strong

module Dodopayments
  AddMeterToPrice = Dodopayments::Models::AddMeterToPrice

  AddonCartResponseItem = Dodopayments::Models::AddonCartResponseItem

  AddonCreateParams = Dodopayments::Models::AddonCreateParams

  AddonListParams = Dodopayments::Models::AddonListParams

  AddonResponse = Dodopayments::Models::AddonResponse

  AddonRetrieveParams = Dodopayments::Models::AddonRetrieveParams

  AddonUpdateImagesParams = Dodopayments::Models::AddonUpdateImagesParams

  AddonUpdateParams = Dodopayments::Models::AddonUpdateParams

  AttachAddon = Dodopayments::Models::AttachAddon

  AttachExistingCustomer = Dodopayments::Models::AttachExistingCustomer

  BalanceLedgerEntry = Dodopayments::Models::BalanceLedgerEntry

  BalanceRetrieveLedgerParams =
    Dodopayments::Models::BalanceRetrieveLedgerParams

  BillingAddress = Dodopayments::Models::BillingAddress

  Brand = Dodopayments::Models::Brand

  BrandCreateParams = Dodopayments::Models::BrandCreateParams

  BrandListParams = Dodopayments::Models::BrandListParams

  BrandRetrieveParams = Dodopayments::Models::BrandRetrieveParams

  BrandUpdateImagesParams = Dodopayments::Models::BrandUpdateImagesParams

  BrandUpdateParams = Dodopayments::Models::BrandUpdateParams

  CheckoutSessionBillingAddress =
    Dodopayments::Models::CheckoutSessionBillingAddress

  CheckoutSessionCreateParams =
    Dodopayments::Models::CheckoutSessionCreateParams

  CheckoutSessionCustomization =
    Dodopayments::Models::CheckoutSessionCustomization

  CheckoutSessionFlags = Dodopayments::Models::CheckoutSessionFlags

  CheckoutSessionPreviewParams =
    Dodopayments::Models::CheckoutSessionPreviewParams

  CheckoutSessionRequest = Dodopayments::Models::CheckoutSessionRequest

  CheckoutSessionResponse = Dodopayments::Models::CheckoutSessionResponse

  CheckoutSessionRetrieveParams =
    Dodopayments::Models::CheckoutSessionRetrieveParams

  CheckoutSessionStatus = Dodopayments::Models::CheckoutSessionStatus

  CountryCode = Dodopayments::Models::CountryCode

  CreateNewCustomer = Dodopayments::Models::CreateNewCustomer

  Currency = Dodopayments::Models::Currency

  Customer = Dodopayments::Models::Customer

  CustomerCreateParams = Dodopayments::Models::CustomerCreateParams

  CustomerLimitedDetails = Dodopayments::Models::CustomerLimitedDetails

  CustomerListParams = Dodopayments::Models::CustomerListParams

  CustomerPortalSession = Dodopayments::Models::CustomerPortalSession

  CustomerRequest = Dodopayments::Models::CustomerRequest

  CustomerRetrieveParams = Dodopayments::Models::CustomerRetrieveParams

  CustomerRetrievePaymentMethodsParams =
    Dodopayments::Models::CustomerRetrievePaymentMethodsParams

  Customers = Dodopayments::Models::Customers

  CustomerUpdateParams = Dodopayments::Models::CustomerUpdateParams

  CustomField = Dodopayments::Models::CustomField

  Discount = Dodopayments::Models::Discount

  DiscountCreateParams = Dodopayments::Models::DiscountCreateParams

  DiscountDeleteParams = Dodopayments::Models::DiscountDeleteParams

  DiscountListParams = Dodopayments::Models::DiscountListParams

  DiscountRetrieveByCodeParams =
    Dodopayments::Models::DiscountRetrieveByCodeParams

  DiscountRetrieveParams = Dodopayments::Models::DiscountRetrieveParams

  DiscountType = Dodopayments::Models::DiscountType

  DiscountUpdateParams = Dodopayments::Models::DiscountUpdateParams

  Dispute = Dodopayments::Models::Dispute

  DisputeAcceptedWebhookEvent =
    Dodopayments::Models::DisputeAcceptedWebhookEvent

  DisputeCancelledWebhookEvent =
    Dodopayments::Models::DisputeCancelledWebhookEvent

  DisputeChallengedWebhookEvent =
    Dodopayments::Models::DisputeChallengedWebhookEvent

  DisputeExpiredWebhookEvent = Dodopayments::Models::DisputeExpiredWebhookEvent

  DisputeListParams = Dodopayments::Models::DisputeListParams

  DisputeLostWebhookEvent = Dodopayments::Models::DisputeLostWebhookEvent

  DisputeOpenedWebhookEvent = Dodopayments::Models::DisputeOpenedWebhookEvent

  DisputeRetrieveParams = Dodopayments::Models::DisputeRetrieveParams

  DisputeStage = Dodopayments::Models::DisputeStage

  DisputeStatus = Dodopayments::Models::DisputeStatus

  DisputeWonWebhookEvent = Dodopayments::Models::DisputeWonWebhookEvent

  Event = Dodopayments::Models::Event

  EventInput = Dodopayments::Models::EventInput

  GetDispute = Dodopayments::Models::GetDispute

  IntentStatus = Dodopayments::Models::IntentStatus

  Invoices = Dodopayments::Models::Invoices

  LicenseActivateParams = Dodopayments::Models::LicenseActivateParams

  LicenseDeactivateParams = Dodopayments::Models::LicenseDeactivateParams

  LicenseKey = Dodopayments::Models::LicenseKey

  LicenseKeyCreatedWebhookEvent =
    Dodopayments::Models::LicenseKeyCreatedWebhookEvent

  LicenseKeyDuration = Dodopayments::Models::LicenseKeyDuration

  LicenseKeyInstance = Dodopayments::Models::LicenseKeyInstance

  LicenseKeyInstanceListParams =
    Dodopayments::Models::LicenseKeyInstanceListParams

  LicenseKeyInstanceRetrieveParams =
    Dodopayments::Models::LicenseKeyInstanceRetrieveParams

  LicenseKeyInstanceUpdateParams =
    Dodopayments::Models::LicenseKeyInstanceUpdateParams

  LicenseKeyListParams = Dodopayments::Models::LicenseKeyListParams

  LicenseKeyRetrieveParams = Dodopayments::Models::LicenseKeyRetrieveParams

  LicenseKeyStatus = Dodopayments::Models::LicenseKeyStatus

  LicenseKeyUpdateParams = Dodopayments::Models::LicenseKeyUpdateParams

  LicenseValidateParams = Dodopayments::Models::LicenseValidateParams

  Meter = Dodopayments::Models::Meter

  MeterAggregation = Dodopayments::Models::MeterAggregation

  MeterArchiveParams = Dodopayments::Models::MeterArchiveParams

  MeterCreateParams = Dodopayments::Models::MeterCreateParams

  MeterFilter = Dodopayments::Models::MeterFilter

  MeterListParams = Dodopayments::Models::MeterListParams

  MeterRetrieveParams = Dodopayments::Models::MeterRetrieveParams

  MeterUnarchiveParams = Dodopayments::Models::MeterUnarchiveParams

  MiscListSupportedCountriesParams =
    Dodopayments::Models::MiscListSupportedCountriesParams

  NewCustomer = Dodopayments::Models::NewCustomer

  OnDemandSubscription = Dodopayments::Models::OnDemandSubscription

  OneTimeProductCartItem = Dodopayments::Models::OneTimeProductCartItem

  Payment = Dodopayments::Models::Payment

  PaymentCancelledWebhookEvent =
    Dodopayments::Models::PaymentCancelledWebhookEvent

  PaymentCreateParams = Dodopayments::Models::PaymentCreateParams

  PaymentFailedWebhookEvent = Dodopayments::Models::PaymentFailedWebhookEvent

  PaymentListParams = Dodopayments::Models::PaymentListParams

  PaymentMethodTypes = Dodopayments::Models::PaymentMethodTypes

  PaymentProcessingWebhookEvent =
    Dodopayments::Models::PaymentProcessingWebhookEvent

  PaymentRetrieveLineItemsParams =
    Dodopayments::Models::PaymentRetrieveLineItemsParams

  PaymentRetrieveParams = Dodopayments::Models::PaymentRetrieveParams

  PaymentSucceededWebhookEvent =
    Dodopayments::Models::PaymentSucceededWebhookEvent

  PayoutListParams = Dodopayments::Models::PayoutListParams

  Price = Dodopayments::Models::Price

  Product = Dodopayments::Models::Product

  ProductArchiveParams = Dodopayments::Models::ProductArchiveParams

  ProductCreateParams = Dodopayments::Models::ProductCreateParams

  ProductItemReq = Dodopayments::Models::ProductItemReq

  ProductListParams = Dodopayments::Models::ProductListParams

  ProductRetrieveParams = Dodopayments::Models::ProductRetrieveParams

  Products = Dodopayments::Models::Products

  ProductUnarchiveParams = Dodopayments::Models::ProductUnarchiveParams

  ProductUpdateFilesParams = Dodopayments::Models::ProductUpdateFilesParams

  ProductUpdateParams = Dodopayments::Models::ProductUpdateParams

  Refund = Dodopayments::Models::Refund

  RefundCreateParams = Dodopayments::Models::RefundCreateParams

  RefundFailedWebhookEvent = Dodopayments::Models::RefundFailedWebhookEvent

  RefundListParams = Dodopayments::Models::RefundListParams

  RefundRetrieveParams = Dodopayments::Models::RefundRetrieveParams

  RefundStatus = Dodopayments::Models::RefundStatus

  RefundSucceededWebhookEvent =
    Dodopayments::Models::RefundSucceededWebhookEvent

  Subscription = Dodopayments::Models::Subscription

  SubscriptionActiveWebhookEvent =
    Dodopayments::Models::SubscriptionActiveWebhookEvent

  SubscriptionCancelledWebhookEvent =
    Dodopayments::Models::SubscriptionCancelledWebhookEvent

  SubscriptionChangePlanParams =
    Dodopayments::Models::SubscriptionChangePlanParams

  SubscriptionChargeParams = Dodopayments::Models::SubscriptionChargeParams

  SubscriptionCreateParams = Dodopayments::Models::SubscriptionCreateParams

  SubscriptionData = Dodopayments::Models::SubscriptionData

  SubscriptionExpiredWebhookEvent =
    Dodopayments::Models::SubscriptionExpiredWebhookEvent

  SubscriptionFailedWebhookEvent =
    Dodopayments::Models::SubscriptionFailedWebhookEvent

  SubscriptionListParams = Dodopayments::Models::SubscriptionListParams

  SubscriptionOnHoldWebhookEvent =
    Dodopayments::Models::SubscriptionOnHoldWebhookEvent

  SubscriptionPlanChangedWebhookEvent =
    Dodopayments::Models::SubscriptionPlanChangedWebhookEvent

  SubscriptionPreviewChangePlanParams =
    Dodopayments::Models::SubscriptionPreviewChangePlanParams

  SubscriptionRenewedWebhookEvent =
    Dodopayments::Models::SubscriptionRenewedWebhookEvent

  SubscriptionRetrieveParams = Dodopayments::Models::SubscriptionRetrieveParams

  SubscriptionRetrieveUsageHistoryParams =
    Dodopayments::Models::SubscriptionRetrieveUsageHistoryParams

  SubscriptionStatus = Dodopayments::Models::SubscriptionStatus

  SubscriptionUpdatedWebhookEvent =
    Dodopayments::Models::SubscriptionUpdatedWebhookEvent

  SubscriptionUpdateParams = Dodopayments::Models::SubscriptionUpdateParams

  SubscriptionUpdatePaymentMethodParams =
    Dodopayments::Models::SubscriptionUpdatePaymentMethodParams

  TaxCategory = Dodopayments::Models::TaxCategory

  ThemeConfig = Dodopayments::Models::ThemeConfig

  ThemeModeConfig = Dodopayments::Models::ThemeModeConfig

  TimeInterval = Dodopayments::Models::TimeInterval

  UnsafeUnwrapWebhookEvent = Dodopayments::Models::UnsafeUnwrapWebhookEvent

  UnwrapWebhookEvent = Dodopayments::Models::UnwrapWebhookEvent

  UsageEventIngestParams = Dodopayments::Models::UsageEventIngestParams

  UsageEventListParams = Dodopayments::Models::UsageEventListParams

  UsageEventRetrieveParams = Dodopayments::Models::UsageEventRetrieveParams

  WebhookCreateParams = Dodopayments::Models::WebhookCreateParams

  WebhookDeleteParams = Dodopayments::Models::WebhookDeleteParams

  WebhookDetails = Dodopayments::Models::WebhookDetails

  WebhookEventType = Dodopayments::Models::WebhookEventType

  WebhookListParams = Dodopayments::Models::WebhookListParams

  WebhookPayload = Dodopayments::Models::WebhookPayload

  WebhookRetrieveParams = Dodopayments::Models::WebhookRetrieveParams

  WebhookRetrieveSecretParams =
    Dodopayments::Models::WebhookRetrieveSecretParams

  Webhooks = Dodopayments::Models::Webhooks

  WebhookUnsafeUnwrapParams = Dodopayments::Models::WebhookUnsafeUnwrapParams

  WebhookUnwrapParams = Dodopayments::Models::WebhookUnwrapParams

  WebhookUpdateParams = Dodopayments::Models::WebhookUpdateParams
end
