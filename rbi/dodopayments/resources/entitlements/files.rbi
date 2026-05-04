# typed: strong

module Dodopayments
  module Resources
    class Entitlements
      class Files
        # Detach a previously-attached file from a `digital_files` entitlement.
        sig do
          params(
            file_id: String,
            id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).void
        end
        def delete(
          # Identifier of the attached file
          file_id,
          # Entitlement Id
          id:,
          request_options: {}
        )
        end

        # Attach a file to a `digital_files` entitlement. Per-file size cap: 500 MiB.
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
