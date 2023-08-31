# frozen_string_literal: true

gem_version = File.read(File.expand_path('GEM_VERSION', __dir__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_avatax_certified_v2'
  s.version     = gem_version
  s.summary     = 'Spree extension for Avalara tax calculation.'
  s.description = 'Spree extension for Avalara tax calculation.'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Mejuri'
  s.email     = 'tech@mejuri.com'
  s.homepage  = 'http://www.mejuri.com'

  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'addressable', '~> 2.3'
  s.add_dependency 'json', '~> 1.7'
  s.add_dependency 'logging', '~> 1.8'
  s.add_dependency 'psych', '~> 2.0.4'
  s.add_dependency 'rest-client', '= 2.0.2'
  s.add_dependency 'spree_core', '~> 2.3.0'

  # add gems here for files
  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails', '~> 4.0'
  s.add_development_dependency 'database_cleaner', '~> 1.2'
  s.add_development_dependency 'deface', '~> 1.0'
  s.add_development_dependency 'dotenv'
  s.add_development_dependency 'factory_girl', '~> 4.5'
  s.add_development_dependency 'ffaker', '~> 1.23'
  s.add_development_dependency 'rspec-its', '~> 1.0'
  s.add_development_dependency 'rspec-rails', '~> 3.1'
  s.add_development_dependency 'sass-rails', '~> 4.0'
  s.add_development_dependency 'selenium-webdriver', '~> 2.40'
  s.add_development_dependency 'shoulda-matchers', '~> 2.7'
  s.add_development_dependency 'simplecov', '~> 0.8'
  s.add_development_dependency 'sqlite3', '~> 1.3'
end