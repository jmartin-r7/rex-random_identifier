# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rex/random_identifier/version'

Gem::Specification.new do |spec|
  spec.name          = "rex-random_identifier"
  spec.version       = Rex::RandomIdentifier::VERSION
  spec.authors       = ["David 'thelightcosine' Maloney"]
  spec.email         = ["DMaloney@rapid7.com"]

  spec.summary       = %q{Random Identifier Generator}
  spec.description   = %q{Ruby Exploitation(Rex) library for generating Random identifier strings}
  spec.homepage      = "https://github.com/rapid7/rex-random_identifier"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.2.0'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency "rex-text"
end
