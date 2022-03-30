class Board
 attr_reader :rows

  def initialize
    @rows = [
      ['.','.','.','.','.','.','.'],
      ['.','.','.','.','.','.','.'],
      ['.','.','.','.','.','.','.'],
      ['.','.','.','.','.','.','.'],
      ['.','.','.','.','.','.','.'],
      ['.','.','.','.','.','.','.']
    ]
    # @columns = [a, b, c, d, e, f, g]
  end

  def welcome_message
  puts " "
  p  "Ready to play Connect Four? Let's go!"
  end

  def print_board
    # @rows = rows
    puts " "
    puts "A B C D E F G"
    # require "pry"; binding.pry
    board = @rows.reverse.map do |row|
      puts row.join(' ')
      end
    puts " "
    #The puts " " at the start and end aren't really necessary, was just doing it for visual purposes
  end

end
