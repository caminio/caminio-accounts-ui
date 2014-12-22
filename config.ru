require './lib/caminio/ui'

require 'bundler'
Bundler.require

require 'rack/cors'
require 'request_store'

require 'active_record'
use ActiveRecord::ConnectionAdapters::ConnectionManagement

use RequestStore::Middleware

use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [ :get, :post, :put, :delete, :options ]
  end
end

Caminio::init

map '/api' do
  run Caminio::API::Root
end

map Caminio::UI::App.assets_prefix do
  run Caminio::UI::App.sprockets
end

map '/' do
  run Caminio::UI::App
end
