require './player'

class Game
  attr_reader :num1, :num2

  def play(player)

      puts "It's your turn, #{player.name}."
      @num1 = rand(0..20)
      @num2 = rand(0..20)
      puts "What does #{@num1} plus #{@num2} equal?"
      
      answer = gets.chomp.to_i

      if check_answer?(answer)
        player.gain_points
        puts "You are correct! Your score is now:#{player.score}"
      else
        player.lose_life
        puts "That's not right, you just lost a life. The number of your lives is now #{player.life} "
      end

  end

  def check_answer?(players_answer)
    result = @num1 + @num2
    if players_answer == result
      true
    else 
      false
    end
  end

end