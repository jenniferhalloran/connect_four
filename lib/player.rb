
class Player
attr_reader :board

  def initialize(board)
    @board = board
  end

  def turn
    puts " "
    puts "Please enter a column A - G to place your piece"
    puts "...or enter Q to quit :("
    get_user_choice
  end

  def get_user_choice
    column_choice = gets.upcase.strip
    validate_input(column_choice)
  end

  def validate_input(column_choice)
    ##DEF want to refactor this....its obnoxious
    if column_choice == "A" || column_choice == "B" || column_choice == "C" || column_choice == "D" || column_choice == "E" || column_choice == "F" || column_choice == "G"
      drop(column_choice)
    elsif column_choice == "Q"
      puts " "
      puts "Fine, we'll find someone else to play with. CYA!"
      puts " "
      exit
    else
      puts " "
      puts "Silly goose, that's not a column! Try again."
      turn
    end
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
    end

    @board.print_board
  end

end
