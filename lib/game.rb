require './lib/player'
require './lib/computer'

class Game

attr_reader :board, :player1, :computer, :turn

  def initialize(board)
    @board = board
    @player1 = Player.new(@board)
    @computer = Computer.new(@board)
    @turn = "player1"
    @turn_count = 0
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
    @board.print_board
    take_turns
  end

  def take_turns
    loop {
      turn_counter
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

  def turn_counter
    @turn_count += 1
    puts "turn # #{@turn_count}"
  end

  def board_full?
    @turn_count == 42
  end

  def end_game
    if board_full?
      puts "It's a Draw!"
      exit
    end
  end
end
