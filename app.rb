require 'sinatra'
require 'sinatra/activerecord'
# require './helpers'

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'sqlite3:test1.db')

get '/' do
	erb :index
end

post '/' do
	input = params[:user_input]
	if input == "BYE"
		@reply = "No Stay!"
	elsif input == input.upcase
		@reply = "NO, NOT SINCE 19#{rand(21)+30}!"		
	else
		@reply = "HUH?! SPEAK UP, SONNY!"
	end	
	 if request.xhr?
    @reply
  else
  	@reply = "This isn't working"
  	erb :index
  end 
end


