# frozen_string_literal: true

module Dodopayments
  module Errors
    class Error < StandardError
      # @!attribute cause
      #
      #   @return [StandardError, nil]
    end

    class ConversionError < Dodopayments::Errors::Error
    end

    class APIError < Dodopayments::Errors::Error
      # @return [URI::Generic]
      attr_accessor :url

      # @return [Integer, nil]
      attr_accessor :status

      # @return [Object, nil]
      attr_accessor :body

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer, nil]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
        @url = url
        @status = status
        @body = body
        @request = request
        @response = response
        super(message)
      end
    end

    class APIConnectionError < Dodopayments::Errors::APIError
      # @!attribute status
      #
      #   @return [nil]

      # @!attribute body
      #
      #   @return [nil]

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(
        url:,
        status: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Connection error."
      )
        super
      end
    end

    class APITimeoutError < Dodopayments::Errors::APIConnectionError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(
        url:,
        status: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Request timed out."
      )
        super
      end
    end

    class APIStatusError < Dodopayments::Errors::APIError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      #
      # @return [self]
      def self.for(url:, status:, body:, request:, response:, message: nil)
        kwargs = {
          url: url,
          status: status,
          body: body,
          request: request,
          response: response,
          message: message
        }

        case status
        in 400
          Dodopayments::Errors::BadRequestError.new(**kwargs)
        in 401
          Dodopayments::Errors::AuthenticationError.new(**kwargs)
        in 403
          Dodopayments::Errors::PermissionDeniedError.new(**kwargs)
        in 404
          Dodopayments::Errors::NotFoundError.new(**kwargs)
        in 409
          Dodopayments::Errors::ConflictError.new(**kwargs)
        in 422
          Dodopayments::Errors::UnprocessableEntityError.new(**kwargs)
        in 429
          Dodopayments::Errors::RateLimitError.new(**kwargs)
        in (500..)
          Dodopayments::Errors::InternalServerError.new(**kwargs)
        else
          Dodopayments::Errors::APIStatusError.new(**kwargs)
        end
      end

      # @!parse
      #   # @return [Integer]
      #   attr_accessor :status

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(url:, status:, body:, request:, response:, message: nil)
        message ||= {url: url.to_s, status: status, body: body}
        super(
          url: url,
          status: status,
          body: body,
          request: request,
          response: response,
          message: message&.to_s
        )
      end
    end

    class BadRequestError < Dodopayments::Errors::APIStatusError
      HTTP_STATUS = 400
    end

    class AuthenticationError < Dodopayments::Errors::APIStatusError
      HTTP_STATUS = 401
    end

    class PermissionDeniedError < Dodopayments::Errors::APIStatusError
      HTTP_STATUS = 403
    end

    class NotFoundError < Dodopayments::Errors::APIStatusError
      HTTP_STATUS = 404
    end

    class ConflictError < Dodopayments::Errors::APIStatusError
      HTTP_STATUS = 409
    end

    class UnprocessableEntityError < Dodopayments::Errors::APIStatusError
      HTTP_STATUS = 422
    end

    class RateLimitError < Dodopayments::Errors::APIStatusError
      HTTP_STATUS = 429
    end

    class InternalServerError < Dodopayments::Errors::APIStatusError
      HTTP_STATUS = (500..)
    end
  end
end
