require 'game'
require 'player'

player1 = Player.new
player2 = Player.new

game = Game.new
game.play(player1, player2)
