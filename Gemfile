# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Default
gem 'bootsnap', '~> 1.3'
gem 'jbuilder', '~> 2.7'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11', '>= 3.11.4'
gem 'rails', '~> 5.2.0'
gem 'sass-rails', '~> 5.0', '>= 5.0.7'
gem 'turbolinks', '~> 5.1', '>= 5.1.1'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'uglifier', '~> 4.1', '>= 4.1.13'

# Extensions
gem 'dotenv-rails', '~> 2.5'
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'

# Authentication
gem 'devise', '~> 4.4', '>= 4.4.3'
gem 'devise-i18n', '~> 1.6', '>= 1.6.2'
gem 'pretender', '~> 0.3.2'
gem 'rolify', '~> 5.2'

# Model
gem 'auto_strip_attributes', '~> 2.4'
gem 'nilify_blanks', '~> 1.3'

# DB
gem 'ffaker', '~> 2.9'
gem 'seedbank', '~> 0.4.0'

# View
gem 'font-awesome-sass', '~> 5.0', '>= 5.0.13'
gem 'slim-rails', '~> 3.1', '>= 3.1.3'

# Controller
gem 'request_store', '~> 1.4', '>= 1.4.1'

# Services
gem 'httparty', '~> 0.16.2'
gem 'websocket-client-simple', '~> 0.3.0'

group :development, :test do
  gem 'awesome_print', '~> 1.8'
  gem 'bullet', '~> 5.7', '>= 5.7.5'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 4.11'
  gem 'listen', '~> 3.1', '>= 3.1.5'
  gem 'rspec-rails', '~> 3.8'
  gem 'spinach-rails', '~> 0.2.1'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0', '>= 2.0.1'
end

group :development do
  gem 'annotate', '~> 2.7', '>= 2.7.4'
  gem 'pry-awesome_print', '~> 9.6', '>= 9.6.11'
  gem 'pry-rails', '~> 0.3.6'
  gem 'spring-commands-rspec', '~> 1.0', '>= 1.0.4'
  gem 'web-console', '~> 3.6', '>= 3.6.2'
end

group :test do
  gem 'database_cleaner', '~> 1.7'
  gem 'simplecov', '~> 0.16.1'
end
# endregion