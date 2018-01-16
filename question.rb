require_relative "player"

class Questions
  
  def initialize(player)
    num_1 = 1 + rand(20)
    num_2 = 1 + rand(20)
    puts "#{player.name}: what does #{num_1} plus #{num_2} equal?"
    @answer = num_1 + num_2
  end

  def evaluate(player, answer)
    if @answer == answer
      puts "YES! You are correct."
    else 
      puts "Seriously? No!"
      player.lose
    end
  end

end