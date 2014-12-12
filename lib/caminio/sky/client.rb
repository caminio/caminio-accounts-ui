require "caminio/sky/client/version"
require 'sinatra/base'
require 'sprockets'
require 'sinatra/sprockets-helpers'
require 'handlebars_assets'

class App < Sinatra::Base
  set :sprockets, Sprockets::Environment.new(root)
  set :precompile, [ /\w+\.(?!js|css).+/, /application.(css|js)$/ ]
  set :assets_prefix, "/assets"
  set :digest_assets, false
  set(:assets_path) { File.join public_folder, assets_prefix }

  set :root, File.expand_path('../../../../',__FILE__)

  configure do
    # Setup Sprockets
    sprockets.append_path File.join(root, "assets", "stylesheets")
    sprockets.append_path File.join(root, "assets", "javascripts")
    sprockets.append_path File.join(root, "assets", "images")
    sprockets.append_path HandlebarsAssets.path
    # Configure Sprockets::Helpers (if necessary)
    Sprockets::Helpers.configure do |config|
      config.environment = sprockets
      config.prefix = assets_prefix
      config.digest = digest_assets
      config.public_path = public_folder
    end
  end
  helpers do
    include Sprockets::Helpers
    # Alternative method for telling Sprockets::Helpers which
    # Sprockets environment to use.
    # def assets_environment
    # settings.sprockets
    # end
  end
  get "/" do
    erb :index
  end
end
