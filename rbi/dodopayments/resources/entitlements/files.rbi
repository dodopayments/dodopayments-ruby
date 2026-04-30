# typed: strong

module Dodopayments
  module Resources
    class Entitlements
      class Files
        # Companion to `post_entitlement_file`. Deletes the file from the Entitlements
        # Engine (force=true) and atomically removes the `file_id` from the entitlement's
        # `integration_config.digital_file_ids` JSONB array. EE delete happens first; if
        # it fails we surface the error and leave local state untouched.
        sig do
          params(
            file_id: String,
            id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).void
        end
        def delete(
          # Digital file Id from EE
          file_id,
          # Entitlement Id
          id:,
          request_options: {}
        )
        end

        # Streams a multipart/form-data body to the Entitlements Engine
        # (`POST /api/digital-files/dodo/files/upload`) and appends the returned `file_id`
        # to the entitlement's `integration_config.digital_file_ids` using a JSONB array
        # append. Compensates EE-side on local DB write failure (best-effort delete of the
        # just-uploaded file).
        sig do
          params(
            id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(Dodopayments::Models::Entitlements::FileUploadResponse)
        end
        def upload(
          # Entitlement Id
          id,
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
