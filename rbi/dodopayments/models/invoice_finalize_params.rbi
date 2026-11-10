# typed: strong

module Dodopayments
  module Models
    class InvoiceFinalizeParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::InvoiceFinalizeParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :invoice_id

      sig { returns(String) }
      attr_accessor :if_match

      # 10 addresses or fewer.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :cc_emails

      sig { returns(T.nilable(String)) }
      attr_accessor :customer_email

      # `true` sends the invoice email after finalise.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :send_

      sig { params(send_: T::Boolean).void }
      attr_writer :send_

      sig do
        params(
          invoice_id: String,
          if_match: String,
          cc_emails: T.nilable(T::Array[String]),
          customer_email: T.nilable(String),
          send_: T::Boolean,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        invoice_id:,
        if_match:,
        # 10 addresses or fewer.
        cc_emails: nil,
        customer_email: nil,
        # `true` sends the invoice email after finalise.
        send_: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            invoice_id: String,
            if_match: String,
            cc_emails: T.nilable(T::Array[String]),
            customer_email: T.nilable(String),
            send_: T::Boolean,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
