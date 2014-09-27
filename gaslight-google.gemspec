# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gaslight/google/version'

Gem::Specification.new do |spec|
  spec.name          = "gaslight-google"
  spec.version       = Gaslight::Google::VERSION
  spec.authors       = ["Jim Anders"]
  spec.email         = ["github@janders223.com"]
  spec.summary       = %q{Gaslight Google API wrapper}
  spec.description   = %q{Gaslight Google API wrapper}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 0.8.9"
  spec.add_dependency "gaslight-client"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "webmock", "~> 1.18.0"
  spec.add_development_dependency "vcr", "~> 2.9.3"
end
