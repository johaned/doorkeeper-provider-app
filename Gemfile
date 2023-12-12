# frozen_string_literal: true

source "http://rubygems.org"

ruby "3.2.0"

gem "rails", "~> 7.1"
gem "grape", "~> 2.0"
gem "grape-entity", "~> 1.0"
gem "grape-swagger", "~> 2.0"
# For Grape::Entity ( https://github.com/ruby-grape/grape-entity )
gem "grape-swagger-entity", "~> 0.3"
gem "grape-cache", github: "johaned/grape-cache"
gem "grape-pagy"
gem "grape-attack", path: "../grape-attack"

# For representable ( https://github.com/apotonick/representable )
gem "grape-swagger-representable", "~> 0.2"
gem "rswag-ui"
# https://stackoverflow.com/questions/44656878/how-to-get-routes-by-grape-api
gem "grape_on_rails_routes"
gem "doorkeeper", "~> 5.6.8"
gem "devise", "~> 4.9"
gem "sprockets-rails", require: "sprockets/railtie"
# wine bouncer is not compatible with grape 2
# gem 'wine_bouncer', '~> 1.0.4'

gem "pagy"
gem "faker"
gem "jquery-rails"

gem "coderay"
gem "redcarpet"

gem "uglifier"
gem "pg", "~> 1.5", group: :production
gem "rollbar"

gem "puma"
gem "rack-timeout"

group :development do
  gem "listen"
  gem "rubocop-performance"
  gem "rubocop-rails_config"
end

group :test do
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem "database_cleaner"
end

group :development, :test do
  gem "sqlite3"
  gem "pry-rails"
end
