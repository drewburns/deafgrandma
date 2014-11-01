require 'sinatra'
require 'sinatra/activerecord'
# require './helpers'

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'sqlite3:test1.db')

get '/' do
	erb :index
end
@bye_times = 0
post(@bye_times) '/' do
	@input = params[:user_input]
	if @input == "BYE"
		@reply = "No Stay!"
		@bye_times += 1
	elsif @input == @input.upcase
		@reply = "NO, NOT SINCE 19#{rand(21)+30}!"		
	else
		@reply = "HUH?! SPEAK UP, SONNY!"
	end	
	erb :index
end