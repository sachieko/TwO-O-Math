require "pp"
require "./player"
require "./game"
require "./question"

#player tests
player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

# puts "#{player1.name} has #{player1.health}/#{player1.health_total} life left!"
# puts "#{player2.name} has #{player2.health}/#{player2.health_total} life left!"
# player1.lose_health
# puts "#{player1.name} has #{player1.health}/#{player1.health_total} life left!"
# puts "#{player2.name} has #{player2.health}/#{player2.health_total} life left!"

#question tests
question = Question.new() # only has up to 20+20 for sums. Very easy. Put a 1000 or 10000 as an arg if you're not a casual.
#game tests
# game = Game.new(player1, player2)
# puts "#{game.current_player.name}: Is adding too hard for you? Poor thing. ⚰️"
# game.current_player.lose_health
# puts "P1: #{player1.health}/#{player1.health_total} vs #{player2.health}/#{player2.health_total}"
# game.change_player
# puts "#{game.current_player.name}: #{question.ask}?"
# puts "#{game.current_player.name}: Is adding too hard for you? Poor thing."
# game.current_player.lose_health
# puts "P1: #{player1.health}/#{player1.health_total} vs #{player2.health}/#{player2.health_total}"

game = Game.new(player1, player2)
while !game.winner do
  puts "#{game.current_player.name}: #{question.ask}"
  if question.answer then
    puts "#{game.current_player.name}: That's right, do you want a sticker or something? How about not losing a life. 👻"
    sleep(1)
    game.change_player
  else
    puts "#{game.current_player.name}: That's... wrong. We had pretty low hopes and you still managed to trip over them. ⚰️"
    sleep(1)
    game.current_player.lose_health
    if game.current_player.health == 0 then
      game.declare_winner
    end
    game.change_player
  end
  puts "P1: #{player1.health}/#{player1.health_total} vs P2: #{player2.health}/#{player2.health_total}"
  sleep(1)
  puts "----- NEW TURN -----" unless game.winner
end
puts "#{game.current_player.name} wins with a score of #{game.current_player.health}/#{game.current_player.health_total}"
sleep(2)
puts "------- GAME OVER -------"
puts "Good bye!"

