source 'https://rubygems.org'

gem 'rails', '3.2.14'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :development do
	gem 'datashift'
	gem 'datashift_spree'
	
	# Deploy with Capistrano
	gem 'capistrano'
	gem 'capistrano-rbenv'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Use puma as the app server
gem 'puma'



# To use debugger
# gem 'debugger'

## SpreeCommerce
gem 'spree', github: 'spree/spree', branch: '2-0-stable'
gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: '2-0-stable'
gem 'spree_i18n', :git => 'git://github.com/spree/spree_i18n.git', :branch => '2-0-stable'