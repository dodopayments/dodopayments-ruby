# typed: strong

module Dodopayments
  module Models
    module Payouts
      module Breakup
        class DetailListParams < Dodopayments::Internal::Type::BaseModel
          extend Dodopayments::Internal::Type::RequestParameters::Converter
          include Dodopayments::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Payouts::Breakup::DetailListParams,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :payout_id

          # Page number (0-indexed). Default: 0.
          sig { returns(T.nilable(Integer)) }
          attr_reader :page_number

          sig { params(page_number: Integer).void }
          attr_writer :page_number

          # Number of items per page. Default: 10, Max: 100.
          sig { returns(T.nilable(Integer)) }
          attr_reader :page_size

          sig { params(page_size: Integer).void }
          attr_writer :page_size

          sig do
            params(
              payout_id: String,
              page_number: Integer,
              page_size: Integer,
              request_options: Dodopayments::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            payout_id:,
            # Page number (0-indexed). Default: 0.
            page_number: nil,
            # Number of items per page. Default: 10, Max: 100.
            page_size: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                payout_id: String,
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
end
