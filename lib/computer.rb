require './lib/board'
require 'pry'

class Computer
attr_reader :board
  def initialize(board)
    @board = board
  end

  def turn
    get_computer_choice
  end

  def get_computer_choice
    sleep([0,1].sample) #not trying to make the instructors sit there forever testing our project
    column_choice = @board.columns.sample
    puts "The computer chose column #{column_choice}."
    drop(column_choice)
  end


  def drop(column_choice)
    # https://stackoverflow.com/questions/27465153/how-can-i-replace-one-single-element-in-an-array-in-ruby
    # this drop method is taking the players input then finding the first index that = "." and replacing it with an x
    if column_choice == "A"
      board.column_a[board.column_a.index(".")] = "o"
    elsif column_choice == "B"
      board.column_b[board.column_b.index(".")] = "o"

    elsif column_choice == "C"
      board.column_c[board.column_c.index(".")] = "o"

    elsif column_choice == "D"
      board.column_d[board.column_d.index(".")] = "o"

    elsif column_choice == "E"
      board.column_e[board.column_e.index(".")] = "o"

    elsif column_choice == "F"
      board.column_f[board.column_f.index(".")] = "o"

    elsif column_choice == "F"
      board.column_g[board.column_g.index(".")] = "o"

    elsif column_choice == "G"
      board.column_g[board.column_g.index(".")] = "o"
    end

  @board.print_board
  end
end
