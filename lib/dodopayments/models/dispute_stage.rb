# frozen_string_literal: true

module Dodopayments
  module Models
    module DisputeStage
      extend Dodopayments::Enum

      PRE_DISPUTE = :pre_dispute
      DISPUTE = :dispute
      PRE_ARBITRATION = :pre_arbitration

      finalize!
    end
  end
end
