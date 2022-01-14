# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'

gem 'activestorage'
gem 'bootstrap-sass'
gem 'coffee-rails'
gem 'jbuilder'
gem 'jquery-rails'
gem 'oj'
gem 'oj_mimic_json'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.1'
gem 'sassc-rails'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbolinks'
gem 'turbo-rails'
gem 'uglifier'

group :development, :test do
  gem 'database_cleaner'
  gem 'factory_bot'
  gem 'pg'
  gem 'pry'
  gem 'rails-controller-testing'
  gem 'rb-readline'
  gem 'rspec-json_expectations'
  gem 'rspec-rails'
end

group :development do
  gem 'listen'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'chromedriver-helper'
  gem 'db-query-matchers'
  gem 'json_spec'
  gem 'launchy'
  gem 'rubocop', require: false
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
