require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rottenpotatoes
  class Application < Rails::Application
    config.load_defaults 7.1

    # Configuration for the application, engines, and railties goes here.
    config.encoding = "utf-8"
    config.filter_parameters += [:password]

    # Enable the asset pipeline
    config.assets.enabled = true
    config.assets.version = '1.0'
  end
end
