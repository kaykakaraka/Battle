class Player
  def initialize(name)
    @name = name
    @points = 100
  end

  def name
    @name
  end

  def attacked
    @points -= 10
  end

  def points
    "#{@points} HP"
  end
end