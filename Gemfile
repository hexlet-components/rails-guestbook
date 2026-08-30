# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby file: ".ruby-version"

gem "bootsnap", require: false
gem "tailwindcss-rails"
# NOTE: должен быть в dev или test зависимостью. Испольузем для заполнения БД для демонстрации
gem "faker"
gem "jbuilder"
gem "jsbundling-rails"
gem "propshaft"
gem "puma", "~> 8.0"
gem "rails", "~> 8.1.3"
gem "sentry-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[windows jruby]

# Use the database-backed adapters for Rails.cache, Active Job, and Action Cable
gem "solid_cable"
gem "solid_cache"
gem "solid_queue"

group :development, :test do
  gem "rubocop-rails-omakase", require: false
  gem "debug", platforms: %i[mri windows]
  gem "solargraph"
  gem "sqlite3"
end
group :development do
  gem "i18n-debug"
  gem "ruby-lsp-rails"
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "minitest-power_assert"
  gem "selenium-webdriver"
end

group :production do
  gem "pg"
end
