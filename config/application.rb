require_relative 'boot'
require 'rails/all'
require 'bootstrap'
require 'rails-i18n'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
module SampleRails5
  class Application < Rails::Application
  	config.i18n.available_locales = [:en, :ru, :ua]
  	config.i18n.default_locale = :"ua"
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
