# frozen_string_literal: true

module Dodopayments
  [Dodopayments::Internal::Type::BaseModel, *Dodopayments::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Dodopayments::Internal::AnyHash) } }
  end

  [
    *Dodopayments::Internal::Type::Enum.included_modules,
    *Dodopayments::Internal::Type::Union.included_modules
  ].each do |cls|
    cls.constants.each do |name|
      case cls.const_get(name)
      in true | false
        cls.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T.all(T::Boolean, cls) } }
        cls.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
      in Integer
        cls.define_sorbet_constant!(:TaggedInteger) { T.type_alias { T.all(Integer, cls) } }
        cls.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
      in Float
        cls.define_sorbet_constant!(:TaggedFloat) { T.type_alias { T.all(Float, cls) } }
        cls.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
      in Symbol
        cls.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { T.all(Symbol, cls) } }
        cls.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
      else
      end
    end
  end

  AddonCartResponseItem = Dodopayments::Models::AddonCartResponseItem

  AddonCreateParams = Dodopayments::Models::AddonCreateParams

  AddonListParams = Dodopayments::Models::AddonListParams

  AddonResponse = Dodopayments::Models::AddonResponse

  AddonRetrieveParams = Dodopayments::Models::AddonRetrieveParams

  AddonUpdateImagesParams = Dodopayments::Models::AddonUpdateImagesParams

  AddonUpdateParams = Dodopayments::Models::AddonUpdateParams

  AttachExistingCustomer = Dodopayments::Models::AttachExistingCustomer

  BillingAddress = Dodopayments::Models::BillingAddress

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

  Customers = Dodopayments::Models::Customers

  CustomerUpdateParams = Dodopayments::Models::CustomerUpdateParams

  Discount = Dodopayments::Models::Discount

  DiscountCreateParams = Dodopayments::Models::DiscountCreateParams

  DiscountDeleteParams = Dodopayments::Models::DiscountDeleteParams

  DiscountListParams = Dodopayments::Models::DiscountListParams

  DiscountRetrieveParams = Dodopayments::Models::DiscountRetrieveParams

  DiscountType = Dodopayments::Models::DiscountType

  DiscountUpdateParams = Dodopayments::Models::DiscountUpdateParams

  Dispute = Dodopayments::Models::Dispute

  DisputeListParams = Dodopayments::Models::DisputeListParams

  DisputeRetrieveParams = Dodopayments::Models::DisputeRetrieveParams

  DisputeStage = Dodopayments::Models::DisputeStage

  DisputeStatus = Dodopayments::Models::DisputeStatus

  IntentStatus = Dodopayments::Models::IntentStatus

  Invoices = Dodopayments::Models::Invoices

  LicenseActivateParams = Dodopayments::Models::LicenseActivateParams

  LicenseDeactivateParams = Dodopayments::Models::LicenseDeactivateParams

  LicenseKey = Dodopayments::Models::LicenseKey

  LicenseKeyDuration = Dodopayments::Models::LicenseKeyDuration

  LicenseKeyInstance = Dodopayments::Models::LicenseKeyInstance

  LicenseKeyInstanceListParams = Dodopayments::Models::LicenseKeyInstanceListParams

  LicenseKeyInstanceRetrieveParams = Dodopayments::Models::LicenseKeyInstanceRetrieveParams

  LicenseKeyInstanceUpdateParams = Dodopayments::Models::LicenseKeyInstanceUpdateParams

  LicenseKeyListParams = Dodopayments::Models::LicenseKeyListParams

  LicenseKeyRetrieveParams = Dodopayments::Models::LicenseKeyRetrieveParams

  LicenseKeyStatus = Dodopayments::Models::LicenseKeyStatus

  LicenseKeyUpdateParams = Dodopayments::Models::LicenseKeyUpdateParams

  LicenseValidateParams = Dodopayments::Models::LicenseValidateParams

  MiscListSupportedCountriesParams = Dodopayments::Models::MiscListSupportedCountriesParams

  OneTimeProductCartItem = Dodopayments::Models::OneTimeProductCartItem

  Payment = Dodopayments::Models::Payment

  PaymentCreateParams = Dodopayments::Models::PaymentCreateParams

  PaymentListParams = Dodopayments::Models::PaymentListParams

  PaymentRetrieveParams = Dodopayments::Models::PaymentRetrieveParams

  PayoutListParams = Dodopayments::Models::PayoutListParams

  Price = Dodopayments::Models::Price

  Product = Dodopayments::Models::Product

  ProductCreateParams = Dodopayments::Models::ProductCreateParams

  ProductDeleteParams = Dodopayments::Models::ProductDeleteParams

  ProductListParams = Dodopayments::Models::ProductListParams

  ProductRetrieveParams = Dodopayments::Models::ProductRetrieveParams

  Products = Dodopayments::Models::Products

  ProductUnarchiveParams = Dodopayments::Models::ProductUnarchiveParams

  ProductUpdateParams = Dodopayments::Models::ProductUpdateParams

  Refund = Dodopayments::Models::Refund

  RefundCreateParams = Dodopayments::Models::RefundCreateParams

  RefundListParams = Dodopayments::Models::RefundListParams

  RefundRetrieveParams = Dodopayments::Models::RefundRetrieveParams

  RefundStatus = Dodopayments::Models::RefundStatus

  Subscription = Dodopayments::Models::Subscription

  SubscriptionChangePlanParams = Dodopayments::Models::SubscriptionChangePlanParams

  SubscriptionChargeParams = Dodopayments::Models::SubscriptionChargeParams

  SubscriptionCreateParams = Dodopayments::Models::SubscriptionCreateParams

  SubscriptionListParams = Dodopayments::Models::SubscriptionListParams

  SubscriptionRetrieveParams = Dodopayments::Models::SubscriptionRetrieveParams

  SubscriptionStatus = Dodopayments::Models::SubscriptionStatus

  SubscriptionUpdateParams = Dodopayments::Models::SubscriptionUpdateParams

  TaxCategory = Dodopayments::Models::TaxCategory

  TimeInterval = Dodopayments::Models::TimeInterval

  WebhookEvent = Dodopayments::Models::WebhookEvent

  WebhookEventListParams = Dodopayments::Models::WebhookEventListParams

  WebhookEventRetrieveParams = Dodopayments::Models::WebhookEventRetrieveParams
end
