

# this class generates players with three lives and a score that starts as 0
class Player
  # attribute readers let the Player class attributes be accesed outside of the class, can theoretically be replaced with 
  # attr_writer AND attr_reader
  attr_accessor :life, :score

  def initialize
    @life = 3
    @score = 0
  end

  def lose_life
    @life -= 1
  end

  def gain_points
    @score += 1
  end
end