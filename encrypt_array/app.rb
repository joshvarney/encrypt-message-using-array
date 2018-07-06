require 'sinatra'
require_relative 'encrypt_array.rb'
enable :sessions

get '/' do 
	erb :first_page
end

post '/encrypte_array(message, shift)' do
message = params[:message].to_s
session[:conv_message] = encrypt_array(message, shift)
redirect '/results?message=' + "#{message}" 
	end
	get '/results' do 
		message = params[:message]
		erb :results, locals:{message: message, encrypted_message: session[:encrypted_message]} 
	end
