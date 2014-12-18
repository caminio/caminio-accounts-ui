require "bundler/gem_tasks"
require 'sprockets/standalone'
require 'sqlite3'
require 'caminio/accounts/rake'

Sprockets::Standalone::RakeTask.new(:assets) do |task, sprockets|
  task.assets   = %w(application.css)
  task.sources  = %w(resources/sass)
  task.output   = File.expand_path('public/assets', Dir.pwd)
  task.compress = true
  task.digest   = true
end

