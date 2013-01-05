source 'https://rubygems.org'

gem 'rails', '3.2.9'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Install haml for templating
gem 'haml', '3.1.7'

# Use Twitter bootstrap (with SASS) framework
gem 'bootstrap-sass', '2.2.2.0'

# For secure password hashing
gem 'bcrypt-ruby', '3.0.1'

group :development, :test do
	gem 'sqlite3', '1.3.6'
	gem 'rspec-rails', '2.12.0'
  gem 'guard-rspec', '2.3.3'
  gem 'growl', '1.0.3'
	gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
	gem 'wdm', :require => false if RUBY_PLATFORM =~ /i386-mingw32/i
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.5'
  gem 'coffee-rails', '3.2.2'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '1.3.0'
end

gem 'jquery-rails', '2.1.4'

group :test do
  gem 'capybara', '2.0.2'
  gem 'factory_girl_rails', '4.1.0'
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
