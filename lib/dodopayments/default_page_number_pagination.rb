# frozen_string_literal: true

module Dodopayments
  # @example
  # ```ruby
  # if default_page_number_pagination.has_next?
  #   default_page_number_pagination = default_page_number_pagination.next_page
  # end
  # ```
  #
  # @example
  # ```ruby
  # default_page_number_pagination.auto_paging_each do |payment|
  #   puts(payment)
  # end
  # ```
  #
  # @example
  # ```ruby
  # payments = default_page_number_pagination
  #   .to_enum
  #   .lazy
  #   .select { _1.object_id.even? }
  #   .map(&:itself)
  #   .take(2)
  #   .to_a
  #
  # payments => Array
  # ```
  class DefaultPageNumberPagination
    include Dodopayments::BasePage

    # @return [Array<Object>, nil]
    attr_accessor :items

    # @api private
    #
    # @param client [Dodopayments::BaseClient]
    # @param req [Hash{Symbol=>Object}]
    # @param headers [Hash{String=>String}, Net::HTTPHeader]
    # @param page_data [Hash{Symbol=>Object}]
    def initialize(client:, req:, headers:, page_data:)
      super
      model = req.fetch(:model)

      case page_data
      in {items: Array | nil => items}
        @items = items&.map { model.coerce(_1) }
      else
      end
    end

    # @return [Boolean]
    def next_page?
      !items.to_a.empty?
    end

    # @raise [Dodopayments::HTTP::Error]
    # @return [Dodopayments::DefaultPageNumberPagination]
    def next_page
      unless next_page?
        message = "No more pages available. Please check #next_page? before calling ##{__method__}"
        raise RuntimeError.new(message)
      end

      req = Dodopayments::Util.deep_merge(
        @req,
        {
          query: {
            page_number: @req.fetch(:query).fetch(
              :page_number,
              1
            ).to_i.succ
          }
        }
      )
      @client.request(req)
    end

    # @param blk [Proc]
    def auto_paging_each(&blk)
      unless block_given?
        raise ArgumentError.new("A block must be given to ##{__method__}")
      end
      page = self
      loop do
        page.items&.each { blk.call(_1) }
        break unless page.next_page?
        page = page.next_page
      end
    end

    # @return [String]
    def inspect
      "#<#{self.class}:0x#{object_id.to_s(16)} items=#{items.inspect}>"
    end
  end
end
