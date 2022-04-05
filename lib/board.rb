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

# ['00','01','02','03','04','05'], # = column A
# ['10','11','12','13','14','15'], # = column B
# ['20','21','22','23','24','25'], # = column C
# ['30','31','32','33','34','35'], # = column D
# ['40','41','42','43','44','45'], # = column E
# ['50','51','52','53','54','55'], # = column F
# ['60','61','62','63','64','65']
