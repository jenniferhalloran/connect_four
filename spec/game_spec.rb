
require './lib/board'
require './lib/player'
require './lib/game'

RSpec.describe Game do

  it "exists" do
    board = Board.new
    game = Game.new(board)

    expect(game).to be_an_instance_of(Game)

  end

  xit "prints a welcome message" do
    board = Board.new
    game = Game.new(board)

    expect{game.intro}.to output("\"Welcome to Connect 4!\"\n\"You're playing against the computer, you get to go first!\"\n").to_stdout
  end
  # Can you test something that then asks for user input??
  it "can access columns from the board" do
    board = Board.new
    game = Game.new(board)

    expect(board.column_a).to eq(['.','.','.','.','.','.'])
  end

  it "starts off as player1's turn" do
    board = Board.new
    game = Game.new(board)

    expect(game.turn).to eq("player1")
  end

  it "has a working switch method" do
    board = Board.new
    game = Game.new(board)

    expect(game.turn).to eq("player1")

    game.switch

    expect(game.turn).to eq("computer")
  end

end
