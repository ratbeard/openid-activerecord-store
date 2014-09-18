# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'open_id/active_record/store/version'

Gem::Specification.new do |spec|
  spec.name          = "openid-activerecord-store"
  spec.version       = OpenId::ActiveRecord::Store::VERSION
  spec.authors       = ["Mauricio Linhares"]
  spec.email         = ["mauricio.linhares@gmail.com"]
  spec.summary       = %q{Gemified ruby-openid ActiveRecord example}
  spec.description   = %q{Gemified ruby-openid ActiveRecord example}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'ruby-openid', '>= 2.0.0', '< 3.0.0'
  spec.add_dependency 'railties', '>= 3.2.0', '< 5.0.0'
  spec.add_dependency 'activerecord', '>= 3.2.0', '< 5.0.0'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~> 3.1.0'
end
