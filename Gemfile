source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '4.0.0'

group :development do
  gem "letter_opener", git: "git://github.com/ryanb/letter_opener.git", branch: "master"
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem "rspec-rails"
  gem 'factory_girl_rails'
  gem 'selenium-webdriver'
end

group :development, :test do
  gem 'pry'
  gem 'pry-nav'
end

gem 'thin'
gem 'newrelic_rpm'

gem 'haml'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'

gem 'mongoid', git: 'https://github.com/mongoid/mongoid.git'
gem 'bson_ext'
gem 'mongoid_slug'

gem 'simple_form'
gem 'roadie'

gem 'devise'

# Want to add active admin once it works for rails 4 and mongoid. Can't get it work right now.
# gem 'activeadmin', github: 'gregbell/active_admin'
# gem 'activeadmin-mongoid',  git: 'git://github.com/elia/activeadmin-mongoid.git'

gem 'json'
gem 'jbuilder', '~> 1.2'

gem 'turbolinks'
gem 'exception_notification'

group :doc do
  gem 'sdoc', require: false
end