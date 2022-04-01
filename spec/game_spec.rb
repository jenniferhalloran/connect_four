
require './lib/board'
require './lib/player'
require './lib/game'

RSpec.describe Game do

  it "exists" do
    board = Board.new
    game = Game.new(board)

    expect(game).to be_an_instance_of(Game)

  end

  it "prints a welcome message" do
    board = Board.new
    game = Game.new(board)

    expect{game.start_game}.to output("\"Welcome to Connect 4!\"\n").to_stdout
  end
  # Can you test something that then asks for user input?? I keep changing the start game method anyway so maybe we worry about this later....

  it "can access columns from the board" do
    board = Board.new
    game = Game.new(board)

    expect(board.column_a).to eq(['.','.','.','.','.','.'])
  end

  it "starts off as player1's turn" do
    board = Board.new
    game = Game.new(board)

    expect(game.player?).to eq(true)
  end

  it "has a working switch method" do
    board = Board.new
    game = Game.new(board)

    expect(game.player?).to eq(true)

    game.switch

    expect(game.player?).to eq(false)
  end

end
