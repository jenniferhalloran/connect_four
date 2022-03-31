class Game
attr_reader :board
  def initialize(board)
    @board = board
  end

  def start_game
    p "Welcome to Connect 4!"
    p "Please enter a column A - G to place your first piece!"

    column_choice = gets.downcase.strip
    # drop(column_choice)
  end

  def drop(column_choice)
    # https://stackoverflow.com/questions/27465153/how-can-i-replace-one-single-element-in-an-array-in-ruby
    # this drop method is taking the players input then finding the first index that = "." and replacing it with an x
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
      p "Sorry, that's not column! Try again"

    end
  end
end
