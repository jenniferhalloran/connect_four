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
    puts " "
    puts "Welcome to Jenn & Brad's Connect 4!"
    puts "You're playing against the computer, you're 'x' and you get to go first!"
    @board.print_board
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
