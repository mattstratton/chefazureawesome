source 'https://rubygems.org'

gem 'berkshelf',  '~> 3.0'
gem 'chef',       '~> 11.12'
gem 'chefspec',   '~> 4.0'
gem 'foodcritic', '~> 3.0'
gem 'rake'
gem 'rubocop',    '~> 0.18.1'

group :development do
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-kitchen'
  gem 'guard-rubocop'
  gem 'guard-foodcritic'
  gem 'ruby_gntp'
end

group :integration do
  gem 'test-kitchen', github: 'afiune/test-kitchen', :branch => 'Transport'
  gem 'kitchen-vagrant', github: 'afiune/kitchen-vagrant', :branch => 'Transport'
end
