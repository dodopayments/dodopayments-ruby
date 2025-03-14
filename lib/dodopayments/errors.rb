# frozen_string_literal: true

module Dodopayments
  class Error < StandardError
    # @!parse
    #   # @return [StandardError, nil]
    #   attr_accessor :cause
  end

  class ConversionError < Dodopayments::Error
  end

  class APIError < Dodopayments::Error
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

  class APIConnectionError < Dodopayments::APIError
    # @!parse
    #   # @return [nil]
    #   attr_accessor :status

    # @!parse
    #   # @return [nil]
    #   attr_accessor :body

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

  class APITimeoutError < Dodopayments::APIConnectionError
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

  class APIStatusError < Dodopayments::APIError
    # @api private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    # @return [Dodopayments::APIStatusError]
    def self.for(url:, status:, body:, request:, response:, message: nil)
      kwargs = {url: url, status: status, body: body, request: request, response: response, message: message}

      case status
      in 400
        Dodopayments::BadRequestError.new(**kwargs)
      in 401
        Dodopayments::AuthenticationError.new(**kwargs)
      in 403
        Dodopayments::PermissionDeniedError.new(**kwargs)
      in 404
        Dodopayments::NotFoundError.new(**kwargs)
      in 409
        Dodopayments::ConflictError.new(**kwargs)
      in 422
        Dodopayments::UnprocessableEntityError.new(**kwargs)
      in 429
        Dodopayments::RateLimitError.new(**kwargs)
      in (500..)
        Dodopayments::InternalServerError.new(**kwargs)
      else
        Dodopayments::APIStatusError.new(**kwargs)
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

  class BadRequestError < Dodopayments::APIStatusError
    HTTP_STATUS = 400
  end

  class AuthenticationError < Dodopayments::APIStatusError
    HTTP_STATUS = 401
  end

  class PermissionDeniedError < Dodopayments::APIStatusError
    HTTP_STATUS = 403
  end

  class NotFoundError < Dodopayments::APIStatusError
    HTTP_STATUS = 404
  end

  class ConflictError < Dodopayments::APIStatusError
    HTTP_STATUS = 409
  end

  class UnprocessableEntityError < Dodopayments::APIStatusError
    HTTP_STATUS = 422
  end

  class RateLimitError < Dodopayments::APIStatusError
    HTTP_STATUS = 429
  end

  class InternalServerError < Dodopayments::APIStatusError
    HTTP_STATUS = (500..)
  end
end
