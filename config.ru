require './lib/caminio/accounts/ui'

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

Caminio::Accounts.init

map '/api' do
  run Caminio::Accounts::API::Root
end

map Caminio::Accounts::UI::App.assets_prefix do
  run Caminio::Accounts::UI::App.sprockets
end

map '/' do
  run Caminio::Accounts::UI::App
end
