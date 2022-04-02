require './lib/player'
require './lib/computer'
## Not gonna lie, I don't get why we need these here...
#
class Game

attr_reader :board, :player1, :computer, :turn

  def initialize(board)
    @board = board
    @player1 = Player.new(@board)
    @computer = Computer.new(@board)
    @turn = "player1"
  end

  def intro
    p "Welcome to Connect 4!"
    p "You're playing against the computer, you get to go first!"
    start_turns
  end

  def start_turns
    loop {
      if @turn == "player1"
        @player1.turn
      else
        @computer.turn
      end
      switch
    }
  end

  def switch
    if @turn == "player1"
      @turn = "computer"
    else
      @turn = "player1"
    end
  end

end
