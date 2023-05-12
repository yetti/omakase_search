# frozen_string_literal: true

module OmakaseSearch
  class SearchEngine
    include ActiveModel::Model

    attr_reader :configuration

    def initialize(configuration)
      @configuration = configuration
    end

    def search(query:)
    end
  end
end
