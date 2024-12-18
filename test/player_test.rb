require 'pry-byebug'
require_relative '../lib/game/board'
require_relative '../lib/game/cell'

board = Board.new
player1 = Player.new("p1", " X ")
player2 = Player.new("p2", " O ")

player1.make_move(board) 

player2.make_move(board)

player1.make_move(board)

player2.make_move(board)

player1.make_move(board) 
