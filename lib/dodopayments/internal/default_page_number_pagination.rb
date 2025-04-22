# frozen_string_literal: true

module Dodopayments
  module Internal
    # @generic Elem
    #
    # @example
    #   if default_page_number_pagination.has_next?
    #     default_page_number_pagination = default_page_number_pagination.next_page
    #   end
    #
    # @example
    #   default_page_number_pagination.auto_paging_each do |payment|
    #     puts(payment)
    #   end
    class DefaultPageNumberPagination
      include Dodopayments::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :items

      # @return [Boolean]
      def next_page?
        !items.to_a.empty?
      end

      # @raise [Dodopayments::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Dodopayments::Internal::Util.deep_merge(
          @req,
          {
            query: {
              page_number: @req.fetch(:query).fetch(
                :page_number, 1
              ).to_i.succ
            }
          }
        )
        @client.request(req)
      end

      # @param blk [Proc]
      #
      # @yieldparam [generic<Elem>]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end

        page = self
        loop do
          page.items&.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [Dodopayments::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}, Net::HTTPHeader]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super

        case page_data
        in {items: Array | nil => items}
          @items = items&.map { Dodopayments::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = Dodopayments::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)}>"
      end
    end
  end
end
