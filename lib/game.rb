require './lib/player'
require './lib/computer'

class Game
attr_reader :board, :player1, :computer, :turn, :turn_count

  def initialize(board)
    @board = board
    @player1 = Player.new(@board)
    @computer = Computer.new(@board)
    @turn = "player1"
    @turn_win = "xxxx"
    @turn_count = 0
  end


  def main_menu
    welcome_message
    loop do
      user_input = gets.upcase.strip
      if user_input == "P"
        initial_turn
        take_turns
        break
      elsif user_input == "Q"
        puts "Sorry to see you go. If you change your mind, we might throw in a prize..."
        exit
      else
        puts 'Hmmm, that wasn\'t an option. Lets try that again.. "P" to play or "Q" to quit.'
      end
    end
  end

  def welcome_message
    puts " "
    puts "Welcome to Jenn & Brad's Connect 4!"
    puts 'Enter "P" to play. Unless you\'re a quitter. Then enter "Q".'
  end


  def initial_turn
    puts " "
    puts "Yay! We hoped you would say that. You're playing against the computer, you're 'x' and you get to go first!"
  end


  def take_turns
    loop {
      @board.print_board
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
      @turn_win = "oooo"
    else
      @turn = "player1"
      @turn_win = "xxxx"
    end
  end


  def turn_counter
    @turn_count += 1
    puts "Turn ##{@turn_count}."
  end


  def full_board?
    @turn_count == 42
  end

  def vertical_win?
    win_check = @board.grid.select do |column|
          column.join.include?(@turn_win)
        end
        !win_check.empty?
  end

  def horizontal_win?
    win_check = @board.grid.transpose.select do |column|
          column.join.include?(@turn_win)
        end
        !win_check.empty?
  end

  def check_end_game
    if full_board?
      @board.print_board
      puts "It's a draw! You almost got 'em, you should try again."
      replay
    elsif horizontal_win? || vertical_win? # || diagonal_win
      @board.print_board
      declare_winner
    end
  end

  def declare_winner
    if @turn == "player1"
      puts "You won! Great job!"
      puts " "
      replay
    else
      puts "The computer won. Nice try!"
      replay
    end
  end

  def replay
    puts 'Want to play again? Enter "Y". Otherwise enter any key to exit.'
    response = gets.upcase.strip
    if response == "Y"
      start_new_game
    else
      quit
    end
  end
end

def start_new_game
  puts 'Love that for you'
  board = Board.new
  game= Game.new(board)
  game.main_menu
end


def quit
  puts " "
  puts "Fine, we'll find someone else to play with. CYA!"
  puts " "
  exit
end
