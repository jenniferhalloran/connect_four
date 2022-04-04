require './lib/player'
require './lib/computer'

class Game

attr_reader :board, :player1, :computer, :turn

  def initialize(board)
    @board = board
    @player1 = Player.new(@board)
    @computer = Computer.new(@board)
    @turn = "player1"
  end

  def main_menu
    puts " "
    puts "Welcome to Jenn & Brad's Connect 4!"
    puts "Enter 'P' to play or 'Q' to quit!"
    loop do
      user_input = gets.upcase.strip
      if user_input == "P"
        start_turns
        break
      elsif user_input == "Q"
        @player.quit
      else
        puts "Lets try that again, enter 'P' to play or 'Q' to quit"
      end
    end
  end

  def start_turns
    puts "Yay, we hoped you would say that! You're now playing the computer and may go first... you're 'x'"
    @board.print
    take_turns
  end

  def take_turns
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
