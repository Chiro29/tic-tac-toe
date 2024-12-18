require_relative 'game/player'
require_relative 'game/board'

class Game
  
  def initialize
    @board = Board.new
    @player1 = Player.new("Player 1 (X)", " X ")
    @player2 = Player.new("Player 2 (O)", " O ")
    @current_player = @player1
  end
end