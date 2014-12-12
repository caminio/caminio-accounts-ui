# require 'sinatra/base'
# require 'sprockets'
# require 'sinatra/sprockets-helpers'
# require 'handlebars_assets'
#
# class App < Sinatra::Base
#
#   register Sinatra::Sprockets::Helpers
#   set :sprockets, Sprockets::Environment.new(root)
#   set :assets_prefix, '/assets'
#   set :digest_assets, true
#
#   configure do
#     # Setup Sprockets
#     sprockets.append_path File.join(root, 'assets', 'stylesheets')
#     sprockets.append_path File.join(root, 'assets', 'javascripts')
#     sprockets.append_path File.join(root, 'assets', 'images')
#     sprockets.append_path HandlebarsAssets.path
#
#     configure_sprockets_helpers do |helpers|
#       # helpers.asset_host = 'some-bucket.s3.amazon.com'
#     end
#   end
#
#   get '/' do
#     erb :index
#   end
#
# end
#
# map('/') { run App }

require './lib/caminio/sky/client'

map App.assets_prefix do
  run App.sprockets
end
map "/" do
  run App
end
