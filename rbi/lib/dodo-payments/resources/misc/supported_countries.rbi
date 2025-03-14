# typed: strong

module DodoPayments
  module Resources
    class Misc
      class SupportedCountries
        sig do
          params(request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything])))
            .returns(DodoPayments::Models::Misc::SupportedCountryListResponse)
        end
        def list(request_options: {})
        end

        sig { params(client: DodoPayments::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
