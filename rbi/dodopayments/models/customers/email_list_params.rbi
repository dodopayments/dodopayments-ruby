# typed: strong

module Dodopayments
  module Models
    module Customers
      class EmailListParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Customers::EmailListParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :customer_id

        # Which page to return. The default is 0.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        # How many emails to return. The default is 10 and the maximum is 100.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig do
          params(
            customer_id: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          customer_id:,
          # Which page to return. The default is 0.
          page_number: nil,
          # How many emails to return. The default is 10 and the maximum is 100.
          page_size: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              page_number: Integer,
              page_size: Integer,
              request_options: Dodopayments::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
