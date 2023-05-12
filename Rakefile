require "bundler/setup"

APP_RAKEFILE = File.expand_path("test/dummy/Rakefile", __dir__)
load "rails/tasks/engine.rake"

load "rails/tasks/statistics.rake"

require "bundler/gem_tasks"

require "rubocop/rake_task"

RuboCop::RakeTask.new(:rubocop) do |t|
  t.options = %w[-A --parallel --format simple]
end

task default: %i[rubocop]
