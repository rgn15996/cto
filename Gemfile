source 'https://rubygems.org'

gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Install thin web server for development
gem 'thin', '1.5.0'

# Install haml for templating
gem 'haml', '4.0.0'

# Use Twitter bootstrap (with SASS) framework
gem 'bootstrap-sass', '2.3.0.1'

# For secure password hashing
gem 'bcrypt-ruby', '3.0.1'

# To generate realistic user data
gem 'faker', '1.1.2'

# Pagination
gem 'will_paginate', '3.0.4'
gem 'bootstrap-will_paginate', '0.0.9'

# Mardown processing filter for haml code
gem 'rdiscount', '1.6.8'

group :development, :test do
	gem 'sqlite3', '1.3.7'
	gem 'rspec-rails', '2.13.0'
  gem 'guard-rspec', '2.5.0'
  gem 'guard-cucumber', '1.3.2'
  gem 'growl', '1.0.3'
  gem 'launchy', '2.2.0'
	gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
	gem 'wdm', :require => false if RUBY_PLATFORM =~ /i386-mingw32/i
  gem 'railroady', '1.1.0' if RUBY_PLATFORM =~ /darwin/i
  gem 'better_errors', '0.7.2'
  gem 'binding_of_caller', '0.7.1'
  gem 'meta_request', '0.2.2'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.6'
  gem 'coffee-rails', '3.2.2'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '1.3.0'
end

gem 'jquery-rails', '2.2.1'

group :test do
  gem 'capybara', '2.0.2'
  gem 'factory_girl_rails', '4.2.1'
  gem 'cucumber-rails', '1.3.0'
  gem 'database_cleaner', '0.9.1'
end

group :production do
  gem 'pg', '0.14.1'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
