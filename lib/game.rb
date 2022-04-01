class Game

attr_reader :board

  def initialize(board)
    @board = board
    @turn = "player1"
  end

  # def computer_choice
  #   chosen_column = ["a","b","c","d","e","f","g"].sample
  # end

  def start_game
    p "Welcome to Connect 4!"

    # loop {
    #   if @turn == "player1"
    #     p "Please enter a column A - G to place your piece"
    #     player1_choice = gets.downcase.strip
    #     chosen_column = player1_choice
    #   else
    #     computer_choice
    #   end
    #
    # drop(chosen_column)
    # switch
    # }
  end

  def switch
    if @turn == "player1"
      @turn = "computer"
    else
      @turn = "player1"
    end
  end

  def player?
    @turn =="player1"
  end

  def drop(chosen_column)
  # https://stackoverflow.com/questions/27465153/how-can-i-replace-one-single-element-in-an-array-in-ruby
    if chosen_column == "a"
      if player?
        board.column_a[board.column_a.index(".")] = "x"
      else
        board.column_a[board.column_a.index(".")] = "o"
      end
    elsif chosen_column == "b"
      if player?
        board.column_b[board.column_b.index(".")] = "x"
      else
        board.column_b[board.column_b.index(".")] = "o"
      end
    elsif chosen_column == "c"
      if player?
        board.column_c[board.column_c.index(".")] = "x"
      else
        board.column_c[board.column_c.index(".")] = "o"
      end
    elsif chosen_column == "d"
      if player?
        board.column_d[board.column_d.index(".")] = "x"
      else
        board.column_d[board.column_d.index(".")] = "o"
      end
    elsif chosen_column == "e"
      if player?
        board.column_e[board.column_e.index(".")] = "x"
      else
        board.column_e[board.column_e.index(".")] = "o"
      end
    elsif chosen_column == "f"
      if player?
        board.column_f[board.column_f.index(".")] = "x"
      else
        board.column_f[board.column_f.index(".")] = "o"
      end
    elsif chosen_column == "g"
      if player?
        board.column_g[board.column_g.index(".")] = "x"
      else
        board.column_g[board.column_g.index(".")] = "o"
      end
    else
       "Silly goose, that's not a column! Try again."

    end
  end
end
