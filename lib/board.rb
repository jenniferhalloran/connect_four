
class Board
 attr_reader :rows, :column_a,:column_b,:column_c,:column_d,:column_e,:column_f,:column_g

  def initialize
    @columns = [
      ['.','.','.','.','.','.'], # = column A = @columns[0]
      ['.','.','.','.','.','.'], # = column B = @columns[1]
      ['.','.','.','.','.','.'], # = column C = @columns[2]
      ['.','.','.','.','.','.'], # = column D = @columns[3]
      ['.','.','.','.','.','.'], # = column E = @columns[4]
      ['.','.','.','.','.','.'], # = column F = @columns[5]
      ['.','.','.','.','.','.']  # = column G = @columns[6]
    ]
    @column_a = @columns[0]
    @column_b = @columns[1]
    @column_c = @columns[2]
    @column_d = @columns[3]
    @column_e = @columns[4]
    @column_f = @columns[5]
    @column_g = @columns[6]

  end

  def print_board
    puts " "
    puts "A B C D E F G"
    @columns.transpose.reverse.map do |column|
      puts column.join(' ')
    end
    puts " "
    #The puts " " at the start and end aren't really necessary, was just doing it for visual purposes
  end

end

# random little debugging bits:
# board = Board.new
# board.print_board
# p board.column_a
# require "pry"; binding.pry
