require './game'
require './player'

puts "Player 1 name: "
input1 = gets.chomp.to_s

puts "Player 2 name: "
input2 = gets.chomp.to_s

player1 = Player.new(input1)
player2 = Player.new(input2)

game = Game.new

playing = true

while playing

  game.play(player1)
  game.play(player2)

  if player1.life == 0
      puts "End game"
      playing = false
  elsif player2.life == 0
      puts "End game"
      playing = false
  end

  def declare_winner
  if player1.score > player2.score
    puts "The winner is #{player1.name} with #{player1.score}"
    puts "#{player2.name} came in second with a score of #{player2.score}" 
  elsif player1.score < player2.score
    puts "The winner is #{player2.name} with #{player2.score}"
    puts "#{player1.name} came in second with a score of #{player1.score}" 
  else "It's a tie!"
  end

  declare_winner

  end
  
end