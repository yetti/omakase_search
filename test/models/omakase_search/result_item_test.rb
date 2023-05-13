# frozen_string_literal: true

module OmakaseSearch
  class ResultItemTest < ActiveSupport::TestCase
    def setup
      @result_item = ResultItem.new(id: "test", title: "test", link: "https://example.com", raw_data: {})
    end

    test "it has an ID" do
      assert_equal "test", @result_item.id
    end

    test "it has a title" do
      assert_equal "test", @result_item.title
    end

    test "it has a link" do
      assert_equal "https://example.com", @result_item.link
    end

    test "it has raw data" do
      assert_empty(@result_item.raw_data)
    end
  end
end
