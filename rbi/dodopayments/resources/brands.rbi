# typed: strong

module Dodopayments
  module Resources
    class Brands
      sig do
        params(
          description: T.nilable(String),
          name: T.nilable(String),
          statement_descriptor: T.nilable(String),
          support_email: T.nilable(String),
          url: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Brand)
      end
      def create(
        description: nil,
        name: nil,
        statement_descriptor: nil,
        support_email: nil,
        url: nil,
        request_options: {}
      )
      end

      # Thin handler just calls `get_brand` and wraps in `Json(...)`
      sig do
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Brand)
      end
      def retrieve(
        # Brand Id
        id,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          description: T.nilable(String),
          image_id: T.nilable(String),
          name: T.nilable(String),
          statement_descriptor: T.nilable(String),
          support_email: T.nilable(String),
          url: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Brand)
      end
      def update(
        # Brand Id
        id,
        description: nil,
        # The UUID you got back from the presigned‐upload call
        image_id: nil,
        name: nil,
        statement_descriptor: nil,
        support_email: nil,
        url: nil,
        request_options: {}
      )
      end

      sig do
        params(request_options: Dodopayments::RequestOptions::OrHash).returns(
          Dodopayments::Models::BrandListResponse
        )
      end
      def list(request_options: {})
      end

      sig do
        params(
          id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Models::BrandUpdateImagesResponse)
      end
      def update_images(
        # Brand Id
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
