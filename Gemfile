source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'
gem 'rails', '~> 6.1.4'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'devise'
gem "simple_form", "~> 5.1"
gem "rexml"
gem "slim-rails"
gem "kaminari"
gem "bootstrap5-kaminari-views"

group :development, :test do

  gem 'sqlite3', '~> 1.4' 
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem "rspec-rails"
  gem 'factory_bot_rails'
end

group :development do
  
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem 'annotate'
  gem 'faker'
end

group :test do

  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem "shoulda-matchers", "~> 5.0"
end

group :production do

  gem 'pg', '1.1.4'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
