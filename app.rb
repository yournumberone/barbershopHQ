
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