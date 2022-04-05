class Board
 attr_reader :rows, :column_a,:column_b,:column_c,:column_d,:column_e,:column_f,:column_g, :columns, :grid

  def initialize
    @grid = [
      ['.','.','.','.','.','.'], # = column A
      ['.','.','.','.','.','.'], # = column B
      ['.','.','.','.','.','.'], # = column C
      ['.','.','.','.','.','.'], # = column D
      ['.','.','.','.','.','.'], # = column E
      ['.','.','.','.','.','.'], # = column F
      ['.','.','.','.','.','.']  # = column G
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

# 
# ['00','01','02','03','04','05'], # = column A
# ['10','11','12','13','14','15'], # = column B
# ['20','21','22','23','24','25'], # = column C
# ['30','31','32','33','34','35'], # = column D
# ['40','41','42','43','44','45'], # = column E
# ['50','51','52','53','54','55'], # = column F
# ['60','61','62','63','64','65']
# diagonal_wins =[
# [grid[3][0], grid[4][1], grid[5][2], grid[6][3]]
# [grid[2][0], grid[3][1], grid[4][2], grid[5][3], grid[6][4]]
# [grid[1][0], grid[2][1], grid[3][2], grid[4][3], grid[5][4], grid[6][5]]
# [grid[0][0], grid[1][1], grid[2][2], grid[3][3], grid[4][4], grid[5][5]]
# [grid[0][1], grid[1][2], grid[2][3], grid[3][4], grid[4][5]]
# [grid[0][2], grid[1][3], grid[2][4], grid[3][5]]
# ]
