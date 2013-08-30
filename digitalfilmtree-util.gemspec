# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'digitalfilmtree/util/version'

Gem::Specification.new do |spec|
  spec.name          = "digitalfilmtree-util"
  spec.version       = Digitalfilmtree::Util::VERSION
  spec.authors       = ["Keyvan Fatehi"]
  spec.email         = ["keyvan@digitalfilmtree.com"]
  spec.description   = %q{Contains common utilities and vendored binaries used in libraries related to DigitalFilm Tree's post production workflow}
  spec.summary       = %q{Contains common utilities and vendored binaries}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "simplecov"
end
