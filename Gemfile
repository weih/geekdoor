source "http://gems.gzruby.org/"

gem 'rails', '3.2.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Javascript runtime for Ubuntu
gem 'execjs'
gem 'therubyracer'

# Mongoid for Mongodb
gem "mongoid", "2.4.3"
gem "bson_ext", "1.5.2"
gem 'mongo-rails-instrumentation','0.2.4'
gem 'simple_form'

# shutdown the assets log
# gem 'quiet_assets', :git => 'git://github.com/AgilionApps/quiet_assets.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'
end

gem 'jquery-rails'

group :development, :test do
  gem 'quiet_assets', :git => 'git://github.com/AgilionApps/quiet_assets.git'
  gem 'rspec-rails'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-livereload'
  gem 'factory_girl_rails'
  gem "capybara"
  gem 'launchy'
  gem 'database_cleaner'
  gem 'capistrano', '2.9.0'
  gem 'pry'
  gem 'newrelic_rpm'
end

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0',  :require => 'bcrypt'

gem 'client_side_validations'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
