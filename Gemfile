# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read('.ruby-version').strip

gem 'bootsnap', require: false
gem 'hiredis'
gem 'importmap-rails'
gem 'puma'
gem 'rails'
gem 'redis'
gem 'sprockets-rails'
gem 'sqlite3'
gem 'stimulus-rails'
gem 'turbo-rails'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'rubocop', require: false
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rake'
  gem 'rubocop-rspec'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
