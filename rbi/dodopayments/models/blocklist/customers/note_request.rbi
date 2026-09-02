# typed: strong

module Dodopayments
  module Models
    module Blocklist
      module Customers
        class NoteRequest < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Blocklist::Customers::NoteRequest,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :note

          sig { params(note: String).returns(T.attached_class) }
          def self.new(note:)
          end

          sig { override.returns({ note: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
