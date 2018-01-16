require_relative "player"
require_relative "question"
require_relative "game"



player1 = Players.new("Player 1")
player2 = Players.new("Player 2")

game = Game.new([player1,player2])

while (player1.score > 0 && player2.score > 0)
  game.players.each do |player|
    q = Questions.new(game.current)
    result = gets.chomp.to_i
    q.evaluate(game.current, result)
    if game.current.score == 0
      break
    end
    game.end_turn
    puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
    puts "----- NEW TURN -----"
  end
end

puts "----- GAME OVER -----"
puts "#{game.set_winner(game.players)[0]} wins with a score of #{game.set_winner(game.players)[1]}/3."
puts "GOODBYE!"