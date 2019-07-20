$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "simple_validations_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "simple-validations-rails"
  spec.version     = SimpleValidationsRails::VERSION
  spec.authors     = ["Matthew Schultz"]
  spec.homepage    = "https://github.com/MatthewSchultz/simple-validations-rails"
  spec.summary     = "A simple set of validations I got tired of writing over and over and over again."
  spec.description = spec.summary
  spec.license     = "MIT"
  spec.metadata    = {
    'source_code_uri' => "https://github.com/MatthewSchultz/simple-validations-rails"
  }
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.3"

  spec.add_development_dependency "sqlite3"
end
