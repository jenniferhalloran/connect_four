require './lib/board'
require './lib/player'
require './lib/game'
require './lib/computer'

board = Board.new
game= Game.new(board)

game.start_game
