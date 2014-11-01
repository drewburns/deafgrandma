require 'sinatra'
require 'sinatra/activerecord'
# require './helpers'

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'sqlite3:pub1.db')

get '/' do
end