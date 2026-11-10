# typed: strong

module Dodopayments
  module Models
    class InvoiceUpdateDunningParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::InvoiceUpdateDunningParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :invoice_id

      sig do
        returns(Dodopayments::InvoiceUpdateDunningParams::Action::OrSymbol)
      end
      attr_accessor :action

      sig { returns(String) }
      attr_accessor :if_match

      # Needed for `reschedule`. Days from the due date.
      sig { returns(T.nilable(T::Array[Integer])) }
      attr_accessor :offsets_days

      sig do
        params(
          invoice_id: String,
          action: Dodopayments::InvoiceUpdateDunningParams::Action::OrSymbol,
          if_match: String,
          offsets_days: T.nilable(T::Array[Integer]),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        invoice_id:,
        action:,
        if_match:,
        # Needed for `reschedule`. Days from the due date.
        offsets_days: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            invoice_id: String,
            action: Dodopayments::InvoiceUpdateDunningParams::Action::OrSymbol,
            if_match: String,
            offsets_days: T.nilable(T::Array[Integer]),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Action
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::InvoiceUpdateDunningParams::Action)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAUSE =
          T.let(
            :pause,
            Dodopayments::InvoiceUpdateDunningParams::Action::TaggedSymbol
          )
        RESUME =
          T.let(
            :resume,
            Dodopayments::InvoiceUpdateDunningParams::Action::TaggedSymbol
          )
        RESCHEDULE =
          T.let(
            :reschedule,
            Dodopayments::InvoiceUpdateDunningParams::Action::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::InvoiceUpdateDunningParams::Action::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
