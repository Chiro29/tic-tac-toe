require_relative 'board'

class Player
  attr_reader :player, :symbol

  def initialize(player, symbol)
    @player = player
    @symbol = symbol
  end

  def make_move(board)
    loop do 
      puts "#{@player} enter coordinates (row,column), e.g. (1,2)"
      puts "Coordinates start from (0,0) to (2,2)"
      input = gets.chomp.strip

      begin
        row, col = input.split(",")

        if row.nil? || col.nil?
          raise ArgumentError, "Invalid input: please use the format 'row,column' (e.g., 1,2)"
        end

        if row !~ /\A\d+\z/ || col !~ /\A\d+\z/ 
          raise ArgumentError, "Invalid input: row and column must be numbers."
        end

        row = row.to_i
        col = col.to_i

        if !row.between?(0, 2) || !col.between?(0, 2)
          raise ArgumentError, "Invalid input, coordinates start from (0,0) to (2,2)"
        end

        if board.cell_at(@symbol, row, col) == true
          break
        end

      rescue ArgumentError => e 
        puts e.message
      rescue NoMethodError => e
        puts "Invalid input, coordinates start from (0,0) to (2,2)"
      end
    end
  end
end