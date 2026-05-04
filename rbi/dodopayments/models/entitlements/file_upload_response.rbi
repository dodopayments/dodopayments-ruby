# typed: strong

module Dodopayments
  module Models
    module Entitlements
      class FileUploadResponse < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::Entitlements::FileUploadResponse,
              Dodopayments::Internal::AnyHash
            )
          end

        # Identifier of the attached file. Pass it to
        # `DELETE /entitlements/{id}/files/{file_id}` to detach the file later.
        sig { returns(String) }
        attr_accessor :file_id

        sig { params(file_id: String).returns(T.attached_class) }
        def self.new(
          # Identifier of the attached file. Pass it to
          # `DELETE /entitlements/{id}/files/{file_id}` to detach the file later.
          file_id:
        )
        end

        sig { override.returns({ file_id: String }) }
        def to_hash
        end
      end
    end
  end
end
