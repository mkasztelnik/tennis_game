# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tennis_game/version'

Gem::Specification.new do |spec|
  spec.name          = "tennis_game"
  spec.version       = TennisGame::VERSION
  spec.authors       = ["Marek Kasztelnik"]
  spec.email         = ["mkasztelnik@gmail.com"]
  spec.summary       = %q{Tennis game scoring system.}
  spec.description   = %q{Tennis game scoring system.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
