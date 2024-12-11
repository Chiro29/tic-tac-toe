require_relative cell

class Board 
  attr_reader :grid

  def initialize
    @grid = Array.new(3) {Array.new(3) {Cell.new}}
  end

  def cell_at(row, column, symbol)
    if @grid[row][column].occupied? == false
      @grid[row][column] = symbol
    else
      puts "The cell is already occupied"
    end
  end
end
