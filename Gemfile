# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

gem 'rails'
gem 'puma', '~> 5.0'
gem 'activestorage'
gem 'bootstrap-sass'
gem 'breadcrumbs_on_rails'
gem 'coffee-rails'
gem 'devise'
gem 'faker', git: 'http://github.com/faker-ruby/faker.git', branch: 'master'
gem 'jquery-rails'
gem 'meta-tags'
gem 'oj'
gem 'oj_mimic_json'
gem 'rexml'
gem 'uglifier'
gem 'sass-rails', '>= 6'
gem 'simple_form'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bcrypt', '~> 3.1.7'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'importmap-rails'
gem 'sprockets-rails'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'diff-lcs', '>= 1.2.0', '< 2.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'database_cleaner'
  gem 'factory_bot'
  gem 'pg'
  gem 'pry'
  gem 'rails-controller-testing'
  gem 'rb-readline'
  gem 'rspec-json_expectations'
  gem 'database_cleaner-active_record'
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 4.0.1'
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'simplecov'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
end

group :test do
  gem 'capybara'
  gem 'db-query-matchers'
  gem 'json_spec'
  gem 'launchy'
  gem 'rubocop', require: false
  gem 'webdrivers'
  gem 'shoulda-matchers'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
