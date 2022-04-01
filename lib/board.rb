
class Board
 attr_reader :rows, :column_a,:column_b,:column_c,:column_d,:column_e,:column_f,:column_g, :columns, :grid

  def initialize
    @grid = [
      ['.','.','.','.','.','.'], # = column A = @columns[0]
      ['.','.','.','.','.','.'], # = column B = @columns[1]
      ['.','.','.','.','.','.'], # = column C = @columns[2]
      ['.','.','.','.','.','.'], # = column D = @columns[3]
      ['.','.','.','.','.','.'], # = column E = @columns[4]
      ['.','.','.','.','.','.'], # = column F = @columns[5]
      ['.','.','.','.','.','.']  # = column G = @columns[6]
    ]
    @column_a = @grid[0]
    @column_b = @grid[1]
    @column_c = @grid[2]
    @column_d = @grid[3]
    @column_e = @grid[4]
    @column_f = @grid[5]
    @column_g = @grid[6]

    @columns = ["a", "b", "c", "d", "e", "f", "g"]

  end

  def print_board
    puts " "
    puts "A B C D E F G"
    @grid.transpose.reverse.map do |column|
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

# board = Board.new
# game = Game.new(board)
# player = Player.new(board)
# computer = Computer.new(board)
# computer.drop("a")
# player.drop("b")
# computer.drop("c")
# player.drop("d")
# computer.drop("e")
# player.drop("f")
# computer.drop("g")
