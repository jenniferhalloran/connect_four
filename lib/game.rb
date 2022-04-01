class Game

attr_reader :board, :player1, :computer

  def initialize(board)
    @board = board
    @player1 = player
    @computer = computer
    @turn = "player1"
  end

  def start_game
    p "Welcome to Connect 4!"
    p "You're playing against the computer, you get to go first!"

    loop {
      if @turn == "player1"
        p "Please enter a column A - G to place your piece"
        player.get_user_choice
      else
        p "It's the computer's turn."
        computer.get_computer_choice
      end
      
      switch
    }

  def switch
    if @turn == "player1"
      @turn = "computer"
    else
      @turn = "player1"
    end
  end

  # def player?
  #   @turn =="player1"
  # end

end
