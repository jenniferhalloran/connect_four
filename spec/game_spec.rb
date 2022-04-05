
require './lib/board'
require './lib/player'
require './lib/game'

RSpec.describe Game do

  it "exists" do
    board = Board.new
    game = Game.new(board)

    expect(game).to be_an_instance_of(Game)
  end

  it "prints a welcome message when player enters 'P'" do
    board = Board.new
    game = Game.new(board)

  allow($stdin).to receive(:gets).and_return("P")
    user_input = $stdin.gets

  expect(user_input).to eq("P")

  expect{game.welcome_message}.to output(" \nWelcome to Jenn & Brad's Connect 4!\nEnter \"P\" to play. Unless you're a quitter. Then enter \"Q\".\n").to_stdout
  end

  it "can access columns from the board" do
    board = Board.new
    game = Game.new(board)

    expect(board.column_a).to eq(['.','.','.','.','.','.'])
    expect(game.board).to eq(board)
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

  it "exits the game when player enters 'Q'" do
    board = Board.new
    game = Game.new(board)

  allow($stdin).to receive(:gets).and_return("Q")
    user_input = $stdin.gets

  expect(user_input).to eq("Q")
  expect{game.welcome_message}.to eq(quit)
  end
end
