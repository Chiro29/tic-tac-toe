require_relative 'cell'
require_relative 'player'

class Board 
  attr_reader :grid

  def initialize
    @grid = Array.new(3) {Array.new(3) {Cell.new}}
  end

  def cell_at(symbol, row, column)
    if @grid[row][column].occupied? 
      puts "The cell is already occupied"
      false
    else
      @grid[row][column].value = symbol
      true
    end
  end

  def check_row?(symbol, row)
    @grid[row].each do |cell|
      return false unless cell.value == symbol 
    end
    true
  end

  def check_column?(symbol, column)
    @grid.each do |row|
      return false unless row[column].value == symbol 
    end
    true
  end

  def check_diagonal1?(symbol)
    for i in 0...@grid.size 
      return false unless @grid[i][i].value == symbol
    end
    true
  end

  def check_diagonal2?(symbol)
    for i in 0...@grid.size 
      return false unless @grid[i][-i-1].value == symbol
    end
    true
  end

  def check_winner?(symbol, row, column)
    check_column?(symbol, column) || check_row?(symbol, row) || check_diagonal1?(symbol) ||check_diagonal2?(symbol)
  end

  def display_board
    @grid.each do |row|
      cell_value = row.map {|cell| cell.value}
      puts cell_value.join("|")
      puts "-----------" unless row == @grid.last
    end
  end

  def check_tie?
    @grid.all? {|row| row.all? {|cell| cell.occupied?}}
  end
end
