require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)
require "simple-validations-rails"

module Dummy
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Disable generation of tests - cause this is a dummy app:
    config.generators do |g|
      g.test_framework  false
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
