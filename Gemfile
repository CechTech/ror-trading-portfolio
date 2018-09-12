# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Default
gem 'bootsnap', '~> 1.3', '>= 1.3.1'
gem 'jbuilder', '~> 2.7'
gem 'pg', '~> 1.1', '>= 1.1.3'
gem 'puma', '~> 3.12'
gem 'rails', '~> 5.2', '>= 5.2.1'
gem 'turbolinks', '~> 5.2'
gem 'tzinfo-data', '~> 1.2018', '>= 1.2018.5'
gem 'uglifier', '~> 4.1', '>= 4.1.18'

# Frontend
gem 'webpacker', '~> 3.5', '>= 3.5.5'

# Extensions
gem 'dotenv-rails', '~> 2.5'
gem 'magic_frozen_string_literal', '~> 1.0', '>= 1.0.2'

# Authentication
gem 'devise', '~> 4.5'
gem 'devise-i18n', '~> 1.6', '>= 1.6.4'
gem 'pretender', '~> 0.3.2'
gem 'rolify', '~> 5.2'

# Model
gem 'auto_strip_attributes', '~> 2.5'
gem 'nilify_blanks', '~> 1.3'

# DB
gem 'ffaker', '~> 2.10'
gem 'seedbank', '~> 0.4.0'

# View
gem 'devise-bootstrap-views', '~> 1.1'
gem 'slim-rails', '~> 3.1', '>= 3.1.3'

# Controller
gem 'request_store', '~> 1.4', '>= 1.4.1'

# Services
gem 'httparty', '~> 0.16.2'
gem 'websocket-client-simple', '~> 0.3.0'

group :development, :test do
  gem 'awesome_print', '~> 1.8'
  gem 'bullet', '~> 5.7', '>= 5.7.6'
  gem 'byebug', '~> 10.0', '>= 10.0.2'
  gem 'factory_bot_rails', '~> 4.11', '>= 4.11.1'
  gem 'listen', '~> 3.1', '>= 3.1.5'
  gem 'rspec-rails', '~> 3.8'
  gem 'spinach-rails', '~> 0.2.1'
end

group :development do
  gem 'annotate', '~> 2.7', '>= 2.7.4'
  gem 'pry-awesome_print', '~> 9.6', '>= 9.6.11'
  gem 'pry-rails', '~> 0.3.6'
  gem 'web-console', '~> 3.7'
end

group :test do
  gem 'database_cleaner', '~> 1.7'
  gem 'simplecov', '~> 0.16.1'
  gem 'shoulda-matchers',
      git: 'https://github.com/thoughtbot/shoulda-matchers.git',
      branch: 'rails-5'
end
# endregion