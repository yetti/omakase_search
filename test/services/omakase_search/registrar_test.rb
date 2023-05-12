# frozen_string_literal: true

require "test_helper"

module OmakaseSearch
  class RegistrarTest < ActiveSupport::TestCase
    def setup
      @configuration = Configuration.new(engine: "OmakaseSearch::TestEngine", view_component: "EdsSearchResults")
      @registrar = Registrar.new
    end

    test "it registers an engine" do
      @registrar.register_engine(id: "eds", config: @configuration)

      assert_equal "OmakaseSearch::TestEngine", @registrar.get_engine(id: "eds").class.name
    end

    test "it raises an error if engine is not registered" do
      assert_raises(NoSuchEngine) { @registrar.get_engine(id: "eds") }
    end
  end
end
