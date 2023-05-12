# frozen_string_literal: true

require "test_helper"

module OmakaseSearch
  class SearchEngineTest < ActiveSupport::TestCase
    def setup
      @configuration = Configuration.new(engine: "OmakaseSearch::TestEngine", view_component: "EdsSearchResults")
      @search_engine = SearchEngine.new(@configuration)
    end

    test "it has a configuration" do
      assert_equal @configuration, @search_engine.configuration
    end
  end
end
