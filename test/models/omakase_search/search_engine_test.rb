# frozen_string_literal: true

require "test_helper"

module OmakaseSearch
  class SearchEngineTest < ActiveSupport::TestCase
    def setup
      @configuration = Configuration.new(id: "test", engine: "OmakaseSearch::TestEngine", view_component: "EdsSearchResults")
      @search_engine = SearchEngine.new(@configuration)
    end

    test "it has a configuration" do
      assert_equal @configuration, @search_engine.configuration
    end

    test "it raises an error if search is not implemented" do
      default_configuration = Configuration.new(id: "default", engine: "OmakaseSearch::SearchEngine", view_component: "SearchResultsViewComponent")
      search_engine = SearchEngine.new(default_configuration)

      assert_raises(SearchNotImplementedError) { search_engine.search(query: "test") }
    end

    test "it does not raise an error if search is implemented" do
      search_engine = OmakaseSearch::TestEngine.new(@configuration)

      assert_nothing_raised { search_engine.search(query: "test") }
    end
  end
end
