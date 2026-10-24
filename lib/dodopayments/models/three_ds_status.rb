# frozen_string_literal: true

module Dodopayments
  module Models
    # The result of the 3DS authentication of a card payment, as the processor reports
    # it.
    module ThreeDSStatus
      extend Dodopayments::Internal::Type::Enum

      AUTHENTICATED = :authenticated
      ATTEMPT_ACKNOWLEDGED = :attempt_acknowledged
      EXEMPTED = :exempted
      FAILED = :failed
      NOT_SUPPORTED = :not_supported
      PROCESSING_ERROR = :processing_error

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
