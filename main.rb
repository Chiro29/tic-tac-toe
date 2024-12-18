require_relative 'lib/game.rb'

loop do
  game = Game.new

  game.play

  puts "Do you want to play again?\nPress any key other than 'n' or enter to continue\n'n' to close"
  again = gets.chomp.downcase

  break if again == 'n'
end
