# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby file: '.ruby-version'

gem 'bootsnap', require: false
gem 'tailwindcss-rails'
# NOTE: должен быть в dev или test зависимостью. Испольузем для заполнения БД для демонстрации
gem 'faker'
gem 'jbuilder'
gem 'jsbundling-rails'
gem 'puma', '~> 8.0'
gem 'rails', '~> 8.1.3'
gem 'sentry-rails'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rubocop'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'solargraph'
  gem 'sqlite3'
end
group :development do
  gem 'i18n-debug'
  gem 'ruby-lsp-rails'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'minitest-power_assert'
  gem 'selenium-webdriver'
end

group :production do
  gem 'pg'
end
