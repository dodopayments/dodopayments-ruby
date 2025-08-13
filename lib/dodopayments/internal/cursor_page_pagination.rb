# frozen_string_literal: true

module Dodopayments
  module Internal
    # @generic Elem
    #
    # @example
    #   if cursor_page_pagination.has_next?
    #     cursor_page_pagination = cursor_page_pagination.next_page
    #   end
    #
    # @example
    #   cursor_page_pagination.auto_paging_each do |webhook|
    #     puts(webhook)
    #   end
    class CursorPagePagination
      include Dodopayments::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :data

      # @return [String]
      attr_accessor :iterator

      # @return [Boolean]
      attr_accessor :done

      # @return [Boolean]
      def next_page?
        done
      end

      # @raise [Dodopayments::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Dodopayments::Internal::Util.deep_merge(@req, {query: {iterator: iterator}})
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
          page.data&.each(&blk)

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
        in {data: Array => data}
          @data = data.map { Dodopayments::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
        @iterator = page_data[:iterator]
        @done = page_data[:done]
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = Dodopayments::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)} iterator=#{iterator.inspect} done=#{done.inspect}>"
      end
    end
  end
end
