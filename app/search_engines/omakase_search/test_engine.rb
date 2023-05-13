# frozen_string_literal: true

module OmakaseSearch
  class TestEngine < OmakaseSearch::SearchEngine
    def search(query: nil)
      SearchResults.new(engine_id: configuration.id, query: query)
    end
  end
end
