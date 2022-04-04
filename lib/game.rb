require './lib/player'
require './lib/computer'

class Game
attr_reader :board, :player1, :computer, :turn, :turn_count

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
    puts 'Enter "P" to play. Unless you\'re a quitter. Then enter "Q".'
    loop do
      user_input = gets.upcase.strip
      if user_input == "P"
        initial_turn
        break
      elsif user_input == "Q"
        puts "Sorry to see you go. If you change your mind, we might throw in a prize..."
        exit
        #OR @player.quit but thought it would be fun to have a different response.
      else
        puts 'Hmmm, that wasn\'t an option. Lets try that again.. "P" to play or "Q" to quit.'
      end
    end
  end


  def initial_turn
    puts " "
    puts "Yay! We hoped you would say that. You're playing against the computer, you're 'x' and you get to go first!"
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
      check_end_game
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
    puts "Turn ##{@turn_count}."
  end


  def full_board?
    @turn_count == 42
  end


  def check_end_game
    if full_board?
      puts "It's a draw! You almost got 'em, you should try again."
      replay
    else
      ##will have win methods here
    end
  end


  def replay
    puts 'Want to play again? Enter "Y". Otherwise enter any key to exit.'
    response = gets.upcase.strip
    if response == "Y"
      puts 'Love that for you! Same rules as the last game - you\'re "x" and you go first.'
      board = Board.new
      game= Game.new(board)
      game.main_menu
    else
      quit
    end
  end
end


def quit
  puts " "
  puts "Fine, we'll find someone else to play with. CYA!"
  puts " "
  exit
end
