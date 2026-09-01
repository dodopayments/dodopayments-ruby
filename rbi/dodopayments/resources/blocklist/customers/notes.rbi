# typed: strong

module Dodopayments
  module Resources
    class Blocklist
      class Customers
        class Notes
          sig do
            params(
              entry_id: String,
              note: String,
              request_options: Dodopayments::RequestOptions::OrHash
            ).returns(Dodopayments::Blocklist::Customers::BlockedCustomerNote)
          end
          def create(
            # Blocklist entry id
            entry_id,
            note:,
            request_options: {}
          )
          end

          sig do
            params(
              note_id: String,
              entry_id: String,
              note: String,
              request_options: Dodopayments::RequestOptions::OrHash
            ).returns(Dodopayments::Blocklist::Customers::BlockedCustomerNote)
          end
          def update(
            # Path param: Note id
            note_id,
            # Path param: Blocklist entry id
            entry_id:,
            # Body param
            note:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Dodopayments::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
