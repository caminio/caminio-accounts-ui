# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'caminio/sky/client/version'

Gem::Specification.new do |spec|
  spec.name          = "caminio-sky-client"
  spec.version       = Caminio::Sky::Client::VERSION
  spec.authors       = ["thorsten zerha"]
  spec.email         = ["thorsten.zerha@tastenwerk.com"]
  spec.summary       = %q{User Interace for caminio-sky}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sinatra"
  spec.add_dependency "sprockets"
  spec.add_dependency "sprockets-helpers"
  spec.add_dependency "handlebars_assets"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
