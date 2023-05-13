# frozen_string_literal: true

module OmakaseSearch
  class SearchNotImplementedError < StandardError; end

  class SearchEngine
    include ActiveModel::Model

    attr_reader :configuration

    def initialize(configuration)
      @configuration = configuration
    end

    def search(query: nil)
      raise SearchNotImplementedError
    end
  end
end
