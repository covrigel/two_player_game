require 'player'

class Game
  attr_reader :num1, :num2
  attr_accessor :player1, :player2



  def play(player1, player2)
    playing = true

    while playing
      @num1 = rand(0..20)
      @num2 = rand(0..20)
      puts "What does #{@num1} plus #{@num2} equal?"
      answer = gets.chomp.to_i

      if check_answer?(answer)
        player1.gain_points
        puts "You are correct! Your score is now:#{player1.score}"
      else
        player1.lose_life
        puts "That's not right, you just lost a life. The number of your lives is now #{player1.life} "
      end

      if player1.life == 0
          puts "End game"
          playing = false
      end
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