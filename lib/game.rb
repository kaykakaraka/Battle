class Game
  def initialize(*player)
    @players = player
  end

  def players
    @players
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end
  
  def attack(player) #player is an object from player class
    player.attacked
  end
end