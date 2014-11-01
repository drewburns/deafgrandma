source "https://rubygems.org"
ruby "2.1.4"

# Sinatra driver
gem 'sinatra'

group :development do
  gem "shotgun" # reloads our app code on each request
  gem "tux" # loads app into irb
  gem "sqlite3"  
end

group :production do
  gem 'pg'
end

# Database support
gem "activerecord"
gem "sinatra-activerecord"