require_relative 'boot'
require 'uri'

require 'rails/all'
require './lib/shared_utils/utils'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Selffin
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    

    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**','*.{rb,yml}').to_s]

    config.i18n.default_locale = :fr

    config.assets.paths << Rails.root.join("app", "assets", "fonts")

  end
end
