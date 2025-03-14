# frozen_string_literal: true

module DodoPayments
  class Error < StandardError
    # @!parse
    #   # @return [StandardError, nil]
    #   attr_accessor :cause
  end

  class ConversionError < DodoPayments::Error
  end

  class APIError < DodoPayments::Error
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

  class APIConnectionError < DodoPayments::APIError
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

  class APITimeoutError < DodoPayments::APIConnectionError
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

  class APIStatusError < DodoPayments::APIError
    # @api private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    # @return [DodoPayments::APIStatusError]
    def self.for(url:, status:, body:, request:, response:, message: nil)
      kwargs = {url: url, status: status, body: body, request: request, response: response, message: message}

      case status
      in 400
        DodoPayments::BadRequestError.new(**kwargs)
      in 401
        DodoPayments::AuthenticationError.new(**kwargs)
      in 403
        DodoPayments::PermissionDeniedError.new(**kwargs)
      in 404
        DodoPayments::NotFoundError.new(**kwargs)
      in 409
        DodoPayments::ConflictError.new(**kwargs)
      in 422
        DodoPayments::UnprocessableEntityError.new(**kwargs)
      in 429
        DodoPayments::RateLimitError.new(**kwargs)
      in (500..)
        DodoPayments::InternalServerError.new(**kwargs)
      else
        DodoPayments::APIStatusError.new(**kwargs)
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

  class BadRequestError < DodoPayments::APIStatusError
    HTTP_STATUS = 400
  end

  class AuthenticationError < DodoPayments::APIStatusError
    HTTP_STATUS = 401
  end

  class PermissionDeniedError < DodoPayments::APIStatusError
    HTTP_STATUS = 403
  end

  class NotFoundError < DodoPayments::APIStatusError
    HTTP_STATUS = 404
  end

  class ConflictError < DodoPayments::APIStatusError
    HTTP_STATUS = 409
  end

  class UnprocessableEntityError < DodoPayments::APIStatusError
    HTTP_STATUS = 422
  end

  class RateLimitError < DodoPayments::APIStatusError
    HTTP_STATUS = 429
  end

  class InternalServerError < DodoPayments::APIStatusError
    HTTP_STATUS = (500..)
  end
end
