# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'ratel/version'

Gem::Specification.new do |spec|
  spec.name          = 'ratel'
  spec.version       = Ratel::VERSION
  spec.authors       = ['linqueta']
  spec.email         = ['lincolnrodrs@gmail.com']

  spec.summary       = 'A bad words validator for Rails applications'
  spec.description   = 'A bad words validator for Rails applications'
  spec.homepage      = 'https://https://github.com/petlove/ratel'
  spec.license       = 'MIT'

  spec.files         = Dir['{app,config,lib}/**/*', 'CHANGELOG.md', 'MIT-LICENSE', 'README.md']
  spec.required_ruby_version = '= 2.7.0'

  spec.add_dependency 'activemodel', '>= 6.0'

  spec.add_development_dependency 'bundler', '~> 2.3'
  spec.add_development_dependency 'pry-byebug', '>= 3.7.0'
  spec.add_development_dependency 'rails', '>= 6.0.1'
  spec.add_development_dependency 'rake', '~> 10.5'
  spec.add_development_dependency 'rspec', '~> 3.9'
  spec.add_development_dependency 'rspec-rails', '>= 3.9'
  spec.add_development_dependency 'rubocop', '>= 0.76.0'
  spec.add_development_dependency 'rubocop-performance', '>= 1.5.1'
  spec.add_development_dependency 'simplecov', '>= 0.17.1'
  spec.add_development_dependency 'simplecov-console', '>= 0.6.0'
end
