require "./lib/player.rb"
require "sinatra/base"
require "sinatra/reloader"
require "./lib/game.rb"


class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get "/test" do
    "Testing infrastructure working!"
  end

  get "/" do
    $game = Game.new
    erb(:index)
  end

  get "/play" do
    erb(:play)
  end

  post "/names" do
    p params
    player_1 = Player.new(params[:Player_1])
    player_2 = Player.new(params[:Player_2])
    $game = Game.new(player_1, player_2)
    redirect ("/play")
  end

  get "/attack" do
    $game.attack($game.player_2)
    erb(:attack)
  end

  run! if app_file == $0
end
