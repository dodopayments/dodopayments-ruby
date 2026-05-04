# frozen_string_literal: true

module Dodopayments
  module Resources
    class Entitlements
      class Files
        # Detach a previously-attached file from a `digital_files` entitlement.
        #
        # @overload delete(file_id, id:, request_options: {})
        #
        # @param file_id [String] Identifier of the attached file
        #
        # @param id [String] Entitlement Id
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Dodopayments::Models::Entitlements::FileDeleteParams
        def delete(file_id, params)
          parsed, options = Dodopayments::Entitlements::FileDeleteParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["entitlements/%1$s/files/%2$s", id, file_id],
            model: NilClass,
            options: options
          )
        end

        # Attach a file to a `digital_files` entitlement. Per-file size cap: 500 MiB.
        #
        # @overload upload(id, request_options: {})
        #
        # @param id [String] Entitlement Id
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::Entitlements::FileUploadResponse]
        #
        # @see Dodopayments::Models::Entitlements::FileUploadParams
        def upload(id, params = {})
          @client.request(
            method: :post,
            path: ["entitlements/%1$s/files", id],
            model: Dodopayments::Models::Entitlements::FileUploadResponse,
            options: params[:request_options]
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
