# frozen_string_literal: true

module OmakaseSearch
  class SearchResults
    # ID of the search engine that returned these results
    attr_accessor :engine_id

    # query string that was used
    attr_accessor :query

    # error message, if any
    attr_accessor :error

    # array of result items
    attr_accessor :result_items

    def initialize(query:, engine_id: "omakase")
      @engine_id = engine_id
      @query = query
      @result_items = []
      @total_items = 0
    end

    def success?
      @error.nil?
    end

    def total_items
      @result_items.count
    end
  end
end
