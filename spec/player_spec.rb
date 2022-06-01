require 'player'

RSpec.describe Player do
  it 'returns a player name' do
    player_1 = Player.new("Sian")
    expect(player_1.name).to eq "Sian"
  end

  it 'reduces points by 10 HP when attacked' do
    player_1 = Player.new("Sian")
    player_1.attacked
    expect(player_1.points).to eq "90 HP"
  end
end