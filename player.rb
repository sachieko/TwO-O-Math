=begin

Player class: -Could be bound up in the game class as two player properties but what if players had custom display names?
name: (init one with player 1 and one with player 2)
health: init with 3 life read
health_total: init with 3 life read
subtract 1 from health method

Extendability: you can increase the maximum life for longer games, or start with a handicap in the future if needed.
=end

class Player

  attr_reader :name, :health, :health_total

  def initialize(name)
    @name = name
    @health = 3
    @health_total = 3
  end

  def lose_health
    @health -= 1
  end
end

