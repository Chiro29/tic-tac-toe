require 'pry-byebug'
require_relative '../lib/game/board'
require_relative '../lib/game/cell'

board = Board.new

board.display_board

puts "------------------"
board.cell_at(0, 0, " O ")
board.display_board

puts "------------------"
board.cell_at(0, 0, " X ")
board.display_board

puts "------------------"
board.cell_at(1, 0, " X ")
board.display_board

puts "------------------"
board.cell_at(0, 1, " O ")
board.display_board

puts "------------------"
board.cell_at(1, 1, " X ")
board.display_board

puts "------------------"
board.cell_at(0, 2, " O ")
board.display_board
