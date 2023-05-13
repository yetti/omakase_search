# frozen_string_literal: true

module OmakaseSearch
  class Configuration
    include ActiveModel::Model

    attr_reader :id, :engine, :view_component

    def initialize(id: "omakase", engine: "OmakaseSearch::SearchEngine", view_component: "SearchResultsViewComponent")
      @id = id
      @engine = engine
      @view_component = view_component
    end
  end
end
