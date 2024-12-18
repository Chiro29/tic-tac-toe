require_relative 'game/player'
require_relative 'game/board'

class Game
  
  def initialize
    @board = Board.new
    @player1 = Player.new("Player 1 (X)", " X ")
    @player2 = Player.new("Player 2 (O)", " O ")
    @current_player = @player1
  end

  def play 
    loop do
      @board.display_board
      @current_player.make_move(@board)
      
      if @board.check_winner?(@current_player.symbol, @current_player.row, @current_player.col)
        @board.display_board
        puts "#{@current_player.player} you won!!!"
        break
      end

      if @board.check_tie? 
        @board.display_board
        puts "It's a tie"
        break
      end

      if @current_player == @player1
        @current_player = @player2
      else
        @current_player = @player1
      end
    end
  end
end