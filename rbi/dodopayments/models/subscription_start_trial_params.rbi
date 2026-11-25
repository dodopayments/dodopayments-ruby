# typed: strong

module Dodopayments
  module Models
    class SubscriptionStartTrialParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::SubscriptionStartTrialParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(Dodopayments::CollectionMethod::OrSymbol) }
      attr_accessor :collection_method

      sig { returns(Dodopayments::Currency::OrSymbol) }
      attr_accessor :currency

      sig { returns(String) }
      attr_accessor :customer_id

      # A recurring product.
      sig { returns(String) }
      attr_accessor :product_id

      # The billing address of an invoice request.
      sig do
        returns(
          T.nilable(Dodopayments::SubscriptionStartTrialParams::BillingAddress)
        )
      end
      attr_reader :billing_address

      sig do
        params(
          billing_address:
            T.nilable(
              Dodopayments::SubscriptionStartTrialParams::BillingAddress::OrHash
            )
        ).void
      end
      attr_writer :billing_address

      # A saved card of the customer. Automatic charge needs it.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_id

      # The terms of the invoices after the trial.
      sig do
        returns(
          T.nilable(
            T.any(
              Dodopayments::SubscriptionStartTrialParams::PaymentTerms::DueOnReceipt,
              Dodopayments::SubscriptionStartTrialParams::PaymentTerms::Net
            )
          )
        )
      end
      attr_accessor :payment_terms

      sig { returns(T.nilable(Integer)) }
      attr_reader :quantity

      sig { params(quantity: Integer).void }
      attr_writer :quantity

      # `true` keeps each renewal draft for review before it finalises.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :review_required

      sig { params(review_required: T::Boolean).void }
      attr_writer :review_required

      sig { returns(T.nilable(String)) }
      attr_accessor :tax_id

      # 1 to 730 days. When this is not set, the product trial applies and the trial
      # misuse check runs.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :trial_period_days

      sig do
        params(
          collection_method: Dodopayments::CollectionMethod::OrSymbol,
          currency: Dodopayments::Currency::OrSymbol,
          customer_id: String,
          product_id: String,
          billing_address:
            T.nilable(
              Dodopayments::SubscriptionStartTrialParams::BillingAddress::OrHash
            ),
          payment_method_id: T.nilable(String),
          payment_terms:
            T.nilable(
              T.any(
                Dodopayments::SubscriptionStartTrialParams::PaymentTerms::DueOnReceipt::OrHash,
                Dodopayments::SubscriptionStartTrialParams::PaymentTerms::Net::OrHash
              )
            ),
          quantity: Integer,
          review_required: T::Boolean,
          tax_id: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        collection_method:,
        currency:,
        customer_id:,
        # A recurring product.
        product_id:,
        # The billing address of an invoice request.
        billing_address: nil,
        # A saved card of the customer. Automatic charge needs it.
        payment_method_id: nil,
        # The terms of the invoices after the trial.
        payment_terms: nil,
        quantity: nil,
        # `true` keeps each renewal draft for review before it finalises.
        review_required: nil,
        tax_id: nil,
        # 1 to 730 days. When this is not set, the product trial applies and the trial
        # misuse check runs.
        trial_period_days: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            collection_method: Dodopayments::CollectionMethod::OrSymbol,
            currency: Dodopayments::Currency::OrSymbol,
            customer_id: String,
            product_id: String,
            billing_address:
              T.nilable(
                Dodopayments::SubscriptionStartTrialParams::BillingAddress
              ),
            payment_method_id: T.nilable(String),
            payment_terms:
              T.nilable(
                T.any(
                  Dodopayments::SubscriptionStartTrialParams::PaymentTerms::DueOnReceipt,
                  Dodopayments::SubscriptionStartTrialParams::PaymentTerms::Net
                )
              ),
            quantity: Integer,
            review_required: T::Boolean,
            tax_id: T.nilable(String),
            trial_period_days: T.nilable(Integer),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      class BillingAddress < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::SubscriptionStartTrialParams::BillingAddress,
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

      # The terms of the invoices after the trial.
      module PaymentTerms
        extend Dodopayments::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Dodopayments::SubscriptionStartTrialParams::PaymentTerms::DueOnReceipt,
              Dodopayments::SubscriptionStartTrialParams::PaymentTerms::Net
            )
          end

        class DueOnReceipt < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::SubscriptionStartTrialParams::PaymentTerms::DueOnReceipt,
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
                Dodopayments::SubscriptionStartTrialParams::PaymentTerms::Net,
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
            T::Array[
              Dodopayments::SubscriptionStartTrialParams::PaymentTerms::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
