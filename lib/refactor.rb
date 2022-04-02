

columns = ["A","B","C","D","E","F","G"]
user_choice = "A"

@grid = [
  ['.','.','.','.','.','.'], # = column A = @grid[0]
  ['.','.','.','.','.','.'], # = column B = @grid[1]
  ['.','.','.','.','.','.'], # = column C = @grid[2]
  ['.','.','.','.','.','.'], # = column D = @grid[3]
  ['.','.','.','.','.','.'], # = column E = @grid[4]
  ['.','.','.','.','.','.'], # = column F = @grid[5]
  ['.','.','.','.','.','.']  # = column G = @grid[6]
]

  ##I would love to refactor this to be shorter and not have to if/else through each input
@columns.each do |column|
  if get_user_choice = column
  board.column[board.column.index(".")] = "x"
  end
end

  @board.print_board
  #
  #
  # if column_choice == "A"
  #   board.column_a[board.column_a.index(".")] = "x"
  #
  # elsif column_choice == "B"
  #   board.column_b[board.column_b.index(".")] = "x"
  #
  # elsif column_choice == "C"
  #   board.column_c[board.column_c.index(".")] = "x"
  #
  # elsif column_choice == "D"
  #   board.column_d[board.column_d.index(".")] = "x"
  #
  # elsif column_choice == "E"
  #   board.column_e[board.column_e.index(".")] = "x"
  #
  # elsif column_choice == "F"
  #   board.column_f[board.column_f.index(".")] = "x"
  #
  # elsif column_choice == "G"
  #   board.column_g[board.column_g.index(".")] = "x"
  # else
  #   puts " "
  #   p "Silly goose, that's not a column! Try again."
  #   turn
  # end

# end
