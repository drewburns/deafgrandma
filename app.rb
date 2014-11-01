require 'sinatra'
require 'sinatra/activerecord'
# require './helpers'

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'sqlite3:test1.db')

get '/' do
	"Hello World"
end

get '/hello' do
	@name = ["Drew","Jacob","Liza","Jeff","Cody"].sample
	erb :index
end

post '/' do
	input = params[:user_input]
	
end