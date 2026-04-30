# frozen_string_literal: true

module Dodopayments
  module Resources
    class Entitlements
      class Files
        # Companion to `post_entitlement_file`. Deletes the file from the Entitlements
        # Engine (force=true) and atomically removes the `file_id` from the entitlement's
        # `integration_config.digital_file_ids` JSONB array. EE delete happens first; if
        # it fails we surface the error and leave local state untouched.
        #
        # @overload delete(file_id, id:, request_options: {})
        #
        # @param file_id [String] Digital file Id from EE
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

        # Streams a multipart/form-data body to the Entitlements Engine
        # (`POST /api/digital-files/dodo/files/upload`) and appends the returned `file_id`
        # to the entitlement's `integration_config.digital_file_ids` using a JSONB array
        # append. Compensates EE-side on local DB write failure (best-effort delete of the
        # just-uploaded file).
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
