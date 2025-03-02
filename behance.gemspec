# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'behance/version'

Gem::Specification.new do |gem|
  gem.name          = "behance"
  gem.version       = Behance::VERSION
  gem.authors       = ["Amed Rodriguez"]
  gem.email         = ["amed@tractical.com"]
  gem.description   = %q{A Ruby wrapper for the Behance API}
  gem.summary       = %q{A Ruby wrapper for the Behance API}
  gem.homepage      = "https://github.com/amedrz/behance"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency     'faraday',            '~> 1.10.3'
  gem.add_runtime_dependency     'faraday_middleware', '~> 1.2.0'
  gem.add_runtime_dependency     'json',               '~> 2.6.3'
  gem.add_development_dependency 'webmock',            '~> 1.8.10'
  gem.add_development_dependency 'rspec',              '~> 2.6'
end
