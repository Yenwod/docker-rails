source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

# gem "rails", path: '/usr/local/bundle/bundler/gems/rails-4eeca2af40c0'
gem "rails", github: 'rails/rails'

# Use sqlite3 as the database for Active Record
gem "sqlite3", "~> 1.4"
# Use Puma as the app server
gem "puma", "~> 5.0"
# Manage modern JavaScript using ESM without transpiling or bundling
gem "importmap-rails", ">= 0.3.4"
# Hotwire's SPA-like page accelerator. Read more: https://turbo.hotwired.dev
gem "turbo-rails", ">= 0.7.4"
# Hotwire's modest JavaScript framework for the HTML you already have. Read more: https://stimulus.hotwired.dev
gem "stimulus-rails", ">= 0.3.9"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.7"
# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Sass to process CSS
# gem "sassc-rails", "~> 2.1"

# Use Tailwind CSS. See: https://github.com/rails/tailwindcss-rails
# gem "tailwindcss-rails", "~> 0.4.3"

# Use Active Model has_secure_password
# gem "bcrypt", "~> 3.1.7"

# Use Active Storage variant
# gem "image_processing", "~> 1.2"

group :development, :test do
  # Call "byebug" anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling "console" anywhere in the code.
  gem "web-console", github: "rails/web-console"
  # Display speed badge on every html page with SQL times and flame graphs.
  # Note: Interferes with etag cache testing. Can be configured to work on production: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  # gem "rack-mini-profiler", "~> 2.0"
  # Speed up rails commands in dev on slow machines / big apps. See: https://github.com/rails/spring
  # gem "spring"
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver"
  # Easy installation and use of web drivers to run system tests with browsers
  gem "webdrivers"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
