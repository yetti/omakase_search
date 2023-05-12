# frozen_string_literal: true

module OmakaseSearch
  class SearchEngine
    include ActiveModel::Model

    attr_accessor :configuration

    def initialize(configuration)
      @configuration = configuration
    end
  end
end
