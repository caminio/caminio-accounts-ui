require './lib/caminio/accounts/ui'

map Caminio::Accounts::UI::App.assets_prefix do
  run Caminio::Accounts::UI::App.sprockets
end
map "/" do
  run Caminio::Accounts::UI::App
end
