# frozen_string_literal: true

module Dodopayments
  module Resources
    class Blocklist
      class Customers
        class Notes
          # @overload create(entry_id, note:, request_options: {})
          #
          # @param entry_id [String] Blocklist entry id
          #
          # @param note [String]
          #
          # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Dodopayments::Models::Blocklist::Customers::BlockedCustomerNote]
          #
          # @see Dodopayments::Models::Blocklist::Customers::NoteCreateParams
          def create(entry_id, params)
            parsed, options = Dodopayments::Blocklist::Customers::NoteCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["blocklist/customers/%1$s/notes", entry_id],
              body: parsed,
              model: Dodopayments::Blocklist::Customers::BlockedCustomerNote,
              options: options
            )
          end

          # @overload update(note_id, entry_id:, note:, request_options: {})
          #
          # @param note_id [String] Path param: Note id
          #
          # @param entry_id [String] Path param: Blocklist entry id
          #
          # @param note [String] Body param
          #
          # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Dodopayments::Models::Blocklist::Customers::BlockedCustomerNote]
          #
          # @see Dodopayments::Models::Blocklist::Customers::NoteUpdateParams
          def update(note_id, params)
            parsed, options = Dodopayments::Blocklist::Customers::NoteUpdateParams.dump_request(params)
            entry_id =
              parsed.delete(:entry_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: ["blocklist/customers/%1$s/notes/%2$s", entry_id, note_id],
              body: parsed,
              model: Dodopayments::Blocklist::Customers::BlockedCustomerNote,
              options: options
            )
          end

          # @api private
          #
          # @param client [Dodopayments::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
