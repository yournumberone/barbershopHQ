
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:shopbase.db"

class Client < ActiveRecord::Base
end

class Idiot < ActiveRecord::Base
end

get '/' do
	erb "Hello! "
end

get '/visit' do
	erb :visit
end

post '/visit' do
	c = Client.new params[:client]
	c.save
	erb "Thank you!"
end