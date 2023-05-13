# frozen_string_literal: true

require "test_helper"

module OmakaseSearch
  class SearchResultsTest < ActiveSupport::TestCase
    def setup
      @search_results = SearchResults.new(engine_id: "test", query: "test")
    end

    test "it has a search engine ID" do
      assert_equal "test", @search_results.engine_id
    end

    test "it has a query" do
      assert_equal "test", @search_results.query
    end

    test "it has result_items" do
      assert_not_nil @search_results.result_items
    end

    test "it has total_items" do
      assert_equal 0, @search_results.total_items
    end

    test "it is successful if there is no error" do
      assert_predicate @search_results, :success?
    end

    test "it is not successful if there is an error" do
      @search_results.error = "test error"

      assert_not @search_results.success?
    end
  end
end
