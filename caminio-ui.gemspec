# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'caminio/ui/version'

Gem::Specification.new do |spec|
  spec.name          = "caminio-ui"
  spec.version       = Caminio::UI::VERSION
  spec.authors       = ["thorsten zerha"]
  spec.email         = ["thorsten.zerha@tastenwerk.com"]
  spec.summary       = %q{User Interace for caminio}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sinatra"
  spec.add_dependency "sprockets"
  spec.add_dependency "sprockets-helpers"
  spec.add_dependency "sprockets-standalone"
  spec.add_dependency "handlebars_assets"
  spec.add_dependency "i18n"
  spec.add_dependency "coffee-script"
  spec.add_dependency "sprockets-standalone"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-puma"
end
