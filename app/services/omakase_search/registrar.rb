# frozen_string_literal: true

module OmakaseSearch
  class NoSuchEngine < StandardError; end

  class Registrar
    def initialize
      @engine_configurations = {}
    end

    def register_engine(id:, config:)
      @engine_configurations[id] = config

      config
    end

    def get_engine(id:)
      conf = @engine_configurations[id]

      raise NoSuchEngine unless conf

      klass = Object.const_get(conf.engine)
      klass.new(conf)
    end
  end
end
