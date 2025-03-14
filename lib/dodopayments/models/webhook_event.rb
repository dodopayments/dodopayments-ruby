# frozen_string_literal: true

module Dodopayments
  module Models
    class WebhookEvent < Dodopayments::BaseModel
      # @!attribute business_id
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute event_id
      #
      #   @return [String]
      required :event_id, String

      # @!attribute event_type
      #
      #   @return [String]
      required :event_type, String

      # @!attribute object_id_
      #
      #   @return [String]
      required :object_id_, String, api_name: :object_id

      # @!attribute latest_attempted_at
      #
      #   @return [Time, nil]
      optional :latest_attempted_at, Time, nil?: true

      # @!attribute request
      #
      #   @return [String, nil]
      optional :request, String, nil?: true

      # @!attribute response
      #
      #   @return [String, nil]
      optional :response, String, nil?: true

      # @!parse
      #   # @param business_id [String]
      #   # @param created_at [Time]
      #   # @param event_id [String]
      #   # @param event_type [String]
      #   # @param object_id_ [String]
      #   # @param latest_attempted_at [Time, nil]
      #   # @param request [String, nil]
      #   # @param response [String, nil]
      #   #
      #   def initialize(
      #     business_id:,
      #     created_at:,
      #     event_id:,
      #     event_type:,
      #     object_id_:,
      #     latest_attempted_at: nil,
      #     request: nil,
      #     response: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Dodopayments::BaseModel) -> void
    end
  end
end
