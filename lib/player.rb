
class Player
attr_reader :board

  def initialize(board)
    @board = board
  end

  def turn
    puts " "
    p "Please enter a column A - G to place your piece"
    p "Enter Q to quit :("
    get_user_choice
  end

  def get_user_choice
    column_choice = gets.upcase.strip
    drop(column_choice)
  end

  def drop(column_choice)
    ##I would love to refactor this to be shorter and not have to if/else through each input
    # @columns.each do |column|
    #   if column == get_user_choice
    #   board.column[board.column.index(".")] = "x"
    #   end
    # end
    if column_choice == "A"
      board.column_a[board.column_a.index(".")] = "x"

    elsif column_choice == "B"
      board.column_b[board.column_b.index(".")] = "x"

    elsif column_choice == "C"
      board.column_c[board.column_c.index(".")] = "x"

    elsif column_choice == "D"
      board.column_d[board.column_d.index(".")] = "x"

    elsif column_choice == "E"
      board.column_e[board.column_e.index(".")] = "x"

    elsif column_choice == "F"
      board.column_f[board.column_f.index(".")] = "x"

    elsif column_choice == "G"
      board.column_g[board.column_g.index(".")] = "x"
    else
      puts " "
      p "Silly goose, that's not a column! Try again."
      turn
    end
    @board.print_board
  end
end
