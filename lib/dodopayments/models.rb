# frozen_string_literal: true

module Dodopayments
  [Dodopayments::Internal::Type::BaseModel, *Dodopayments::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Dodopayments::Internal::AnyHash) } }
  end

  Dodopayments::Internal::Util.walk_namespaces(Dodopayments::Models).each do |mod|
    case mod
    in Dodopayments::Internal::Type::Enum | Dodopayments::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Dodopayments::Internal::Util.walk_namespaces(Dodopayments::Models)
                              .lazy
                              .grep(Dodopayments::Internal::Type::Union)
                              .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  AddonCartResponseItem = Dodopayments::Models::AddonCartResponseItem

  AddonCreateParams = Dodopayments::Models::AddonCreateParams

  AddonListParams = Dodopayments::Models::AddonListParams

  AddonResponse = Dodopayments::Models::AddonResponse

  AddonRetrieveParams = Dodopayments::Models::AddonRetrieveParams

  AddonUpdateImagesParams = Dodopayments::Models::AddonUpdateImagesParams

  AddonUpdateParams = Dodopayments::Models::AddonUpdateParams

  AttachAddon = Dodopayments::Models::AttachAddon

  AttachExistingCustomer = Dodopayments::Models::AttachExistingCustomer

  BillingAddress = Dodopayments::Models::BillingAddress

  Brand = Dodopayments::Models::Brand

  BrandCreateParams = Dodopayments::Models::BrandCreateParams

  BrandListParams = Dodopayments::Models::BrandListParams

  BrandRetrieveParams = Dodopayments::Models::BrandRetrieveParams

  BrandUpdateImagesParams = Dodopayments::Models::BrandUpdateImagesParams

  BrandUpdateParams = Dodopayments::Models::BrandUpdateParams

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

  GetDispute = Dodopayments::Models::GetDispute

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

  NewCustomer = Dodopayments::Models::NewCustomer

  OneTimeProductCartItem = Dodopayments::Models::OneTimeProductCartItem

  Payment = Dodopayments::Models::Payment

  PaymentCreateParams = Dodopayments::Models::PaymentCreateParams

  PaymentListParams = Dodopayments::Models::PaymentListParams

  PaymentMethodTypes = Dodopayments::Models::PaymentMethodTypes

  PaymentRetrieveLineItemsParams = Dodopayments::Models::PaymentRetrieveLineItemsParams

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

  ProductUpdateFilesParams = Dodopayments::Models::ProductUpdateFilesParams

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

  WebhookCreateParams = Dodopayments::Models::WebhookCreateParams

  WebhookDeleteParams = Dodopayments::Models::WebhookDeleteParams

  WebhookEventType = Dodopayments::Models::WebhookEventType

  WebhookListParams = Dodopayments::Models::WebhookListParams

  WebhookPayload = Dodopayments::Models::WebhookPayload

  WebhookRetrieveParams = Dodopayments::Models::WebhookRetrieveParams

  WebhookRetrieveSecretParams = Dodopayments::Models::WebhookRetrieveSecretParams

  Webhooks = Dodopayments::Models::Webhooks

  WebhookUpdateParams = Dodopayments::Models::WebhookUpdateParams

  YourWebhookURLCreateParams = Dodopayments::Models::YourWebhookURLCreateParams
end
