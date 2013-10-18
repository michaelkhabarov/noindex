# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'noindex/version'

Gem::Specification.new do |spec|
  spec.name          = "noindex"
  spec.version       = Noindex::VERSION
  spec.authors       = ["Michael Khabarov"]
  spec.email         = ["michaelkhabarov@alphastate.ru"]
  spec.description   = %q{Hide some pages from search engines in Ruby on Rails applications}
  spec.summary       = %q{Noindex provides a simple way for Ruby on Rails applications to tell search engines what to index on your site and what to not}
  spec.homepage      = "https://github.com/michaelkhabarov/noindex"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "redcarpet"
  spec.add_development_dependency "yard"

  spec.add_dependency "rails", ">= 3.0.0"
end
