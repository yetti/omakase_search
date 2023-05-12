# frozen_string_literal: true

module OmakaseSearch
  class SearchResults < ::Array
    # total nubmer of items returned
    attr_accessor :total_items

    # ID of the search engine that returned these results
    attr_accessor :engine_id

    # query string that was used
    attr_accessor :query

    # error message, if any
    attr_accessor :error
  end
end
