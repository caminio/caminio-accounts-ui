require 'sinatra/base'
require 'sprockets'
require 'sinatra/sprockets-helpers'
require 'handlebars_assets'

module Caminio
  module Accounts
    module UI

      class App < Sinatra::Base

        Tilt.register Tilt::ERBTemplate, 'html.erb'
        HandlebarsAssets::Config.ember = true

        set :sprockets, Sprockets::Environment.new(root)
        set :precompile, [ /\w+\.(?!js|css).+/, /application.(css|js)$/ ]
        set :assets_prefix, "/assets"
        set :digest_assets, false
        set(:assets_path) { File.join public_folder, assets_prefix }

        set :root, File.expand_path('../../../../../',__FILE__)
        set :views, lambda { File.join(root, 'app', 'views') }

        configure do
          # Setup Sprockets
          sprockets.append_path File.join(root, "app", "assets", "stylesheets")
          sprockets.append_path File.join(root, "app", "assets", "javascripts")
          sprockets.append_path File.join(root, "app", "assets", "images")
          sprockets.append_path File.join(root, "app", "assets", "fonts")
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
        end

        get "/" do
          erb :index
        end

      end

    end
  end
end
