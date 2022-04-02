
class Board
 attr_reader :rows, :column_a,:column_b,:column_c,:column_d,:column_e,:column_f,:column_g, :columns, :grid

  def initialize
    @grid = [
      ['.','.','.','.','.','.'], # = column A = @grid[0]
      ['.','.','.','.','.','.'], # = column B = @grid[1]
      ['.','.','.','.','.','.'], # = column C = @grid[2]
      ['.','.','.','.','.','.'], # = column D = @grid[3]
      ['.','.','.','.','.','.'], # = column E = @grid[4]
      ['.','.','.','.','.','.'], # = column F = @grid[5]
      ['.','.','.','.','.','.']  # = column G = @grid[6]
    ]
    @column_a = @grid[0]
    @column_b = @grid[1]
    @column_c = @grid[2]
    @column_d = @grid[3]
    @column_e = @grid[4]
    @column_f = @grid[5]
    @column_g = @grid[6]

    @columns = ["A", "B", "C", "D", "E", "F", "G"]
  end

  def print_board
    puts " "
    puts "A B C D E F G"
    @grid.transpose.reverse.map do |column|
      puts column.join(' ')
    end
    puts " "
  end

end
