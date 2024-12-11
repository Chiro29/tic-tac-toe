class Cell
  attr_accessor :value

  def initialize
    @value = " "
  end

  def occupied?
    @value != " "
  end
end
