source 'http://rubygems.org'

gem 'rails', '3.1.1'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'mysql2', '0.3.10'
gem 'css-bootstrap-rails'
gem 'devise'
gem 'nifty-generators'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'omniauth-github'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'less'
end

gem 'jquery-rails'
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
gem "mocha", :group => :test

group :development,:test do
  gem 'minitest'
  gem 'rspec-rails', '>= 2.8.0.rc1'
  gem 'factory_girl_rails', '>= 1.4.0'
  gem 'capybara', '>= 1.1.2'
  gem 'cucumber-rails', '1.2.0'
  gem 'database_cleaner'
end
