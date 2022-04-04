class Player
attr_reader :board

  def initialize(board)
    @board = board
  end

  def turn
    # puts " "
    puts "Please enter a column A - G to place your piece ... or enter Q to quit :("
    get_user_choice
  end


  def get_user_choice
    column_choice = gets.upcase.strip
    validate_input(column_choice)
  end


  def validate_input(column_choice)
    if @board.columns.include?(column_choice)
      validate_column(column_choice)
    elsif column_choice == "Q"
      quit
    else
      puts " "
      @board.print_board
      puts "Silly goose, that's not a column! Try again."
      turn
      ##would it be better practice to put this in a invalid_column method?
    end
  end


# => I want to move this to game class
  def valid_column?(column_choice)
    if column_choice == "A"
      board.column_a.include?(".")
    elsif column_choice == "B"
      board.column_b.include?(".")
    elsif column_choice == "C"
      board.column_c.include?(".")
    elsif column_choice == "D"
      board.column_d.include?(".")
    elsif column_choice == "E"
      board.column_e.include?(".")
    elsif column_choice == "F"
      board.column_f.include?(".")
    elsif column_choice == "G"
      board.column_g.include?(".")
    end
  end


  def validate_column(column_choice)
    if valid_column?(column_choice)
      drop(column_choice)
    else
      # until valid_column?(column_choice) do
      @board.print_board
      puts "That column is full, lets try that again."
      puts " "
      turn
      # end
    end
  end



  def drop(column_choice)
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
  ##I would love to refactor this to be shorter and not have to if/else through each input
  # @columns.each do |column|
  #   if column == get_user_choice
  #   board.column[board.column.index(".")] = "x"
  #   end
  # end



end
