# frozen_string_literal: true

module OmakaseSearch
  class ResultItem
    # unique ID of this result item
    attr_accessor :id

    # title of the result item to display
    attr_accessor :title

    # link to the resource this result item represents
    attr_accessor :link

    # raw hash of result data
    attr_accessor :raw_data

    def initialize(id:, title:, link:, raw_data: nil)
      @id = id
      @title = title
      @link = link
      @raw_data = raw_data
    end
  end
end
