source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.18'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end

#gem 'irwi', :path => '/Users/tkawa/Projects/irwi'
gem 'irwi', :git => 'git://github.com/tkawa/irwi.git'
gem 'bluecloth'

gem 'thin'
gem 'jquery-rails'
gem 'sqlite3', :group => [:development, :test]
gem 'pg', :group => :production
gem "haml", ">= 3.1.4"
gem "haml-rails", ">= 0.3.4"
gem "rspec-rails", ">= 2.9.0", :group => [:development, :test]
gem 'i18n_generators', :group => :development
gem 'erb2haml', :group => :development
gem 'rack-rewrite'
gem 'omniauth-scaffold', :group => :development
gem 'omniauth-twitter'
gem 'rails_config'
gem 'rack-recaptcha', :require => 'rack/recaptcha'
gem 'rollbar'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
group :development, :test do
  gem 'meta_request', '0.2.1'
end
