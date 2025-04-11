# frozen_string_literal: true

module Dodopayments
  module Internal
    module Type
      # @api private
      module RequestParameters
        # @!parse
        #   # Options to specify HTTP behaviour for this request.
        #   # @return [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
        #   attr_accessor :request_options

        # @param mod [Module]
        def self.included(mod)
          return unless mod <= Dodopayments::BaseModel

          mod.extend(Dodopayments::Internal::Type::RequestParameters::Converter)
          mod.optional(:request_options, Dodopayments::RequestOptions)
        end

        # @api private
        module Converter
          # @api private
          #
          # @param params [Object]
          #
          # @return [Array(Object, Hash{Symbol=>Object})]
          def dump_request(params)
            case (dumped = dump(params))
            in Hash
              [dumped.except(:request_options), dumped[:request_options]]
            else
              [dumped, nil]
            end
          end
        end
      end
    end
  end
end
