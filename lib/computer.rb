require './lib/board'
require 'pry'

class Computer
attr_reader :board
  def initialize(board)
    @board = board
  end

  def choose_column
    column_choice = @board.columns.sample
    validate_column(column_choice)
  end

  def valid_column?(column_choice)
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

  def validate_column(column_choice)
    if valid_column?(column_choice)
      puts "The computer chose column #{column_choice}"
      drop(column_choice)
    else
      choose_column
    end
  end

  def drop(column_choice)
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
