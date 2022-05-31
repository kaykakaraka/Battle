require "sinatra/base"
require "sinatra/reloader"

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get "/test" do
    "Testing infrastructure working!"
  end

  get "/" do
    erb(:index)
  end

  get "/play" do
    @player_1 = session[:Player_1]
    @player_2 = session[:Player_2]
    erb(:play)
  end

  post "/names" do
    p params
    session[:Player_1] = params[:Player_1]
    session[:Player_2] = params[:Player_2]
    redirect ("/play")
  end

  run! if app_file == $0
end
