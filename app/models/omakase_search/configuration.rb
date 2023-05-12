# frozen_string_literal: true

module OmakaseSearch
  class Configuration
    include ActiveModel::Model

    attr_reader :engine, :view_component

    def initialize(engine:, view_component:)
      @engine = engine
      @view_component = view_component
    end
  end
end
