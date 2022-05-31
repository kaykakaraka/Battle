require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/test' do
    "Testing infrastructure working!"
  end

  get '/' do 
    erb(:name_form)
  end

  get "/name_cat" do
    erb(:index)
  end

  post '/start' do
    p params
    @player_1 = params[:Player_1]
    @player_2 = params[:Player_2]
    erb(:start)
  end

  run! if app_file == $0
end

