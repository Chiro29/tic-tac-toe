require_relative 'game/player'
require_relative 'game/board'

class Game
  
  def initialize
    @board = Board.new
    @player1 = Player.new("Player 1 (X)", " X ")
    @player2 = Player.new("Player 2 (O)", " O ")
    @current_player = @player1
  end

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def play 
    loop do
      @board.display_board
      row, col = @current_player.make_move(@board)
      
      if @board.check_winner?(@current_player.symbol, row, col)
        @board.display_board
        puts "#{@current_player.player} you won!!!"
        break
      end

      if @board.check_tie? 
        @board.display_board
        puts "It's a tie"
        break
      end

      switch_player
    end
  end
end