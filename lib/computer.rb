require './lib/board'
require 'pry'

class Computer
attr_reader :board
  def initialize(board)
    @board = board
  end

  def get_computer_choice
    column_choice = @board.columns.sample
    drop(column_choice)
  end


  def drop(column_choice)
    # https://stackoverflow.com/questions/27465153/how-can-i-replace-one-single-element-in-an-array-in-ruby
    # this drop method is taking the players input then finding the first index that = "." and replacing it with an x
    if column_choice == "a"
      board.column_a[board.column_a.index(".")] = "o"
    elsif column_choice == "b"
      board.column_b[board.column_b.index(".")] = "o"

    elsif column_choice == "c"
      board.column_c[board.column_c.index(".")] = "o"

    elsif column_choice == "d"
      board.column_d[board.column_d.index(".")] = "o"

    elsif column_choice == "e"
      board.column_e[board.column_e.index(".")] = "o"

    elsif column_choice == "f"
      board.column_f[board.column_f.index(".")] = "o"

    elsif column_choice == "g"
      board.column_g[board.column_g.index(".")] = "o"
    end

  @board.print_board
  end
end
