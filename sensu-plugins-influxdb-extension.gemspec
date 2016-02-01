# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |spec|
  spec.name          = "sensu-plugins-influxdb-extension"
  spec.version       = Sensu::Extension::INFLUXDB_VERSION
  spec.authors       = ["Sensu-Plugins and contributors"]
  spec.email         = ['<sensu-users@googlegroups.com>']

  spec.summary       = "Sensu extension to push data to InfluxDB"
  spec.description   = ""
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = Dir.glob('{bin,lib}/**/*') + %w(LICENSE README.md CHANGELOG.md)
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "em-http-request", "~> 1.1"
  spec.add_runtime_dependency "sensu-em", "~> 2.4"
  spec.add_runtime_dependency "sensu-extension", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
