require "./lib/player.rb"
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
    erb(:play)
  end

  post "/names" do
    p params
    $player_1 = Player.new(params[:Player_1])
    $player_2 = Player.new(params[:Player_2])
    redirect ("/play")
  end

  get "/attack" do
    erb(:attack)
  end
  
  run! if app_file == $0
end
