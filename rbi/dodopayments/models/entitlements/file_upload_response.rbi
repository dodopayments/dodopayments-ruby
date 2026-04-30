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

        # EE-issued digital file id; appended to
        # `entitlements.integration_config.digital_file_ids`.
        sig { returns(String) }
        attr_accessor :file_id

        sig { params(file_id: String).returns(T.attached_class) }
        def self.new(
          # EE-issued digital file id; appended to
          # `entitlements.integration_config.digital_file_ids`.
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
