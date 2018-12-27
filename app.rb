
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:shopbase.db"

class Client < ActiveRecord::Base
	validates :name, presence: true, length: {minimum:3}
	validates :phone, presence: true
	validates :datetime, presence: true
end

class Idiot < ActiveRecord::Base
end
class Barber < ActiveRecord::Base
end

before do
	@barbers = Barber.all
end

get '/' do
	erb "Hello! "
end

get '/barber/:id' do
	@barber = Barber.find(params[:id])
	erb :barber
end

get '/barbers' do
	erb :barbers
end

get '/visit' do
	@c = Client.new
	erb :visit
end

post '/visit' do
	@c = Client.new params[:client]
	if @c.save
		erb "Thank you!"
	else
		@error = @c.errors.full_messages.first
		erb :visit
	end
end