class Players 
  attr_reader :score, :name

  def initialize name
    @name = name
    @score = 3
  end
  
  def lose
    @score -= 1
  end
end