# frozen_string_literal: true

source "https://rubygems.org"

gem 'sinatra'
gem 'activerecord'
gem 'sinatra-activerecord' # ORM gem
gem 'sinatra-contrib'
gem 'puma'
gem 'rake'
gem 'sinatra-static-assets'
 
group :development do
  gem 'sqlite3' # Development database adaptor gem
  gem 'tux' # gives you access to an interactive console similar to 'rails console'
  gem 'dotenv'

  gem 'foreman'
  gem 'rubocop'
end
 
group :production do
  gem 'pg' # Production database adaptor gem
end
