=begin
Game class:
Run the game method
Track current player: Init with player 1
change current player method - attr_reader
winner
could set a time limit-
=end

class Game
  attr_accessor :winner
  attr_reader :current_player

  def initialize(player_1, player_2)
    @current_player = player_1
    @player_two = player_2
    @player_one = player_1
    @winner = nil
  end

  def change_player
    @current_player == @player_one ? @current_player = @player_two : @current_player = @player_one 
  end

  def declare_winner
    @current_player == @player_one ? @winner = @player_two : @winner = @player_one
  end
end