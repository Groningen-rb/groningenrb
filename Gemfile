source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails',            '3.2.6'

group :assets do
  gem 'sass-rails',     '~> 3.2.3'
  gem 'coffee-rails',   '~> 3.2.1'
  gem 'uglifier',       '>= 1.0.3'
end

# Server
gem 'thin',             '~> 1.3.1'

# Tools
gem 'jquery-rails',     '~> 2.0.2'
gem 'haml',             '~> 3.1.6'
gem 'kaminari',         '~> 0.13.0'

# Data input
gem 'simple_form',      '~> 2.0.2'
gem 'redcarpet',        '~> 2.1.1'
gem 'pygmentize',       '~> 0.0.3'
# gem 'chronic',          '~> 0.6.7' # Linguistic datetime input

gem 'gmaps4rails',      '~> 1.5.2'

# Authentication
# gem 'bcrypt-ruby', '~> 3.0.0'
gem 'omniauth',         '~> 1.1.0'
gem 'omniauth-github',  '~> 1.0.1'
gem 'cancan',           '~> 1.6.7'

gem 'twitter',          '~> 3.1.0'

gem 'clockwork'

group :production do
  gem 'pg',             '~> 0.13.2'
  gem 'newrelic_rpm'
end

group :development do
  gem 'sqlite3'
  gem 'heroku'
  gem 'foreman'
end