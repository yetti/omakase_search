require_relative "lib/omakase_search/version"

Gem::Specification.new do |spec|
  spec.name = "omakase_search"
  spec.version = OmakaseSearch::VERSION
  spec.authors = ["Yetrina Battad"]
  spec.email = ["hello@yetti.io"]
  spec.homepage = "https://github.com/yetti/omakase_search"
  spec.summary = "Normalises search engine querying and displaying results."
  spec.description = "BYO search engine."
  spec.license = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/yetti/omakase_search.git"
  spec.metadata["changelog_uri"] = "https://github.com/yetti/omakaes_search/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0"
end
