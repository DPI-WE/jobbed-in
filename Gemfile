source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.1"

group :development do
  gem "annotate"
  gem "better_errors"
  gem "binding_of_caller"
  gem "dev_toolbar"
  gem "draft_generators"
  gem "grade_runner"
  gem "htmlbeautifier"
  gem "rails_db"
  gem "rufo"
  gem "specs_to_readme"
  gem "web-console"
end

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "faker"
  gem "rspec-rails", "~> 6.0.0"
end

group :test do
  gem "capybara"
  gem "draft_matchers"
  gem "rspec-html-matchers"
  gem "selenium-webdriver"
  gem "shoulda-matchers", "~> 4.0"
  gem "webdrivers"
  gem "webmock"
end

gem "active_link_to"
gem "appdev_support"
gem "awesome_print"
gem "aws-sdk-s3", "~> 1.182", require: false
gem "bootsnap", require: false
gem "bootstrap"
gem "devise"
gem "dotenv"
gem "http"
gem "importmap-rails"
gem "jbuilder"
gem "kaminari"
gem "pg", "~> 1.5.6"
gem "puma"
gem "rails", "~> 7.1.3", ">= 7.1.3.2"
gem "ransack", "~> 4.1"
gem "redis", "~> 4.0"
gem "sassc-rails"
gem "simple_form"
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "stimulus-rails"
gem "table_print"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
