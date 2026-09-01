# typed: strong

module Dodopayments
  module Models
    module Blocklist
      module Customers
        class NoteUpdateParams < Dodopayments::Models::Blocklist::Customers::NoteRequest
          extend Dodopayments::Internal::Type::RequestParameters::Converter
          include Dodopayments::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Blocklist::Customers::NoteUpdateParams,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :entry_id

          sig { returns(String) }
          attr_accessor :note_id

          sig do
            params(
              entry_id: String,
              note_id: String,
              request_options: Dodopayments::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(entry_id:, note_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                entry_id: String,
                note_id: String,
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
