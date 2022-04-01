
class Player
attr_reader :board

  def initialize(board)
    @board = board

  end

  def get_user_choice
    column_choice = gets.downcase.strip
  end

  def drop(column_choice)
    ##I would love to refactor this to be shorter and not have to if/else through each input

    if column_choice == "a"
      board.column_a[board.column_a.index(".")] = "x"

    elsif column_choice == "b"
      board.column_b[board.column_b.index(".")] = "x"

    elsif column_choice == "c"
      board.column_c[board.column_c.index(".")] = "x"

    elsif column_choice == "d"
      board.column_d[board.column_d.index(".")] = "x"

    elsif column_choice == "e"
      board.column_e[board.column_e.index(".")] = "x"

    elsif column_choice == "f"
      board.column_f[board.column_f.index(".")] = "x"

    elsif column_choice == "g"
      board.column_g[board.column_g.index(".")] = "x"
    else
      "Silly goose, that's not a column! Try again."
    end
    
  end
end
