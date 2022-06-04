require 'game'

RSpec.describe Game do
  it "allows a player to attack another" do
    player_2 = double :player_2, attacked: 90
    game = Game.new
    expect(game.attack(player_2)).to eq 90
  end

  it "initializes with two players" do
    player_1 = double :player, name: "Mittens"
    player_2 = double :player, name: "Matilda"
    game = Game.new(player_1, player_2)
    expect(game).to be
  end

  it 'returns the players as an array' do
    player_1 = double :player, name: "Mittens"
    player_2 = double :player, name: "Matilda"
    game = Game.new(player_1, player_2)
    expect(game.players).to eq [player_1, player_2]
  end

  it "returns player 1" do
    player_1 = double :player, name: "Mittens"
    player_2 = double :player, name: "Matilda"
    game = Game.new(player_1, player_2)
    expect(game.player_1).to eq player_1
  end

  it 'returns player 2' do
    player_1 = double :player, name: "Mittens"
    player_2 = double :player, name: "Matilda"
    game = Game.new(player_1, player_2)
    expect(game.player_2).to eq player_2
  end
end

