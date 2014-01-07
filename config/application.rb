require File.expand_path('../boot', __FILE__)
require 'rails/all'

Bundler.require(:default, Rails.env)

module Ebooks
  class Application < Rails::Application
    config.assets.initialize_on_precompile = false
    foo = 'bar'
  end
end
