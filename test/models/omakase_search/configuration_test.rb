# frozen_string_literal: true

require "test_helper"

module OmakaseSearch
  class ConfigurationTest < ActiveSupport::TestCase
    def setup
      @configuration = Configuration.new(id: "test", engine: "OmakaseSearch::TestEngine", view_component: "EdsSearchResults")
    end

    test "it has an engine" do
      assert_equal "OmakaseSearch::TestEngine", @configuration.engine
    end

    test "it has a view component" do
      assert_equal "EdsSearchResults", @configuration.view_component
    end
  end
end
