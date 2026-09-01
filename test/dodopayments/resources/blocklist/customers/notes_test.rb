# frozen_string_literal: true

require_relative "../../../test_helper"

class Dodopayments::Test::Resources::Blocklist::Customers::NotesTest < Dodopayments::Test::ResourceTest
  def test_create_required_params
    response = @dodo_payments.blocklist.customers.notes.create("entry_id", note: "note")

    assert_pattern do
      response => Dodopayments::Blocklist::Customers::BlockedCustomerNote
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        note: String,
        author_email: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_update_required_params
    response = @dodo_payments.blocklist.customers.notes.update("note_id", entry_id: "entry_id", note: "note")

    assert_pattern do
      response => Dodopayments::Blocklist::Customers::BlockedCustomerNote
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        note: String,
        author_email: String | nil,
        updated_at: Time | nil
      }
    end
  end
end
