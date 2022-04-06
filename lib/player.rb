require './lib/game'

class Player
attr_reader :board

  def initialize(board)
    @board = board
  end

  def turn
    print_instruction
    column_choice = get_user_choice
    if valid_input?(column_choice) && available_column?(column_choice)
      drop(column_choice)
    else
      give_response(column_choice)
      turn
    end
  end

  def give_response(column_choice)
    if valid_input?(column_choice) && !available_column?(column_choice)
      @board.print_board
      p "That column is full, lets try that again."
      puts " "
    # elsif column_choice == "Q"
    #   quit
    else
      puts " "
      p "Silly goose, that's not a column! Try again."
    end
  end

  def print_instruction
    puts "Please enter a column A - G to place your piece."
  end

  def get_user_choice
    gets.strip.upcase
  end

  def valid_input?(column_choice)
    @board.columns.include?(column_choice)
  end

  def available_column?(column_choice)
    if column_choice == "A"
      @board.column_a.include?(".")
    elsif column_choice == "B"
      @board.column_b.include?(".")
    elsif column_choice == "C"
      @board.column_c.include?(".")
    elsif column_choice == "D"
      @board.column_d.include?(".")
    elsif column_choice == "E"
      @board.column_e.include?(".")
    elsif column_choice == "F"
      @board.column_f.include?(".")
    elsif column_choice == "G"
      @board.column_g.include?(".")
    end
  end

  def drop(column_choice)
    if column_choice == "A"
      @board.column_a[board.column_a.index(".")] = "x"
    elsif column_choice == "B"
      @board.column_b[board.column_b.index(".")] = "x"
    elsif column_choice == "C"
      @board.column_c[board.column_c.index(".")] = "x"
    elsif column_choice == "D"
      @board.column_d[board.column_d.index(".")] = "x"
    elsif column_choice == "E"
      @board.column_e[board.column_e.index(".")] = "x"
    elsif column_choice == "F"
      @board.column_f[board.column_f.index(".")] = "x"
    elsif column_choice == "G"
      @board.column_g[board.column_g.index(".")] = "x"
    end
  end
  ##I would love to refactor this to be shorter and not have to if/else through each input
  # @columns.each do |column|
  #   if column == get_user_choice
  #   board.column[board.column.index(".")] = "x"
  #   end
  # end
end
