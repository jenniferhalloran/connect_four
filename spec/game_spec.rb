
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

  it "can determine if the column is full" do
    board = Board.new
    game = Game.new(board)

    42.times {game.turn_counter}

    expect(game.turn_count).to eq(42)
    expect(game.full_board?).to eq(true)
  end

  it "can check vertical win for player" do
    board = Board.new
    game = Game.new(board)
    player = Player.new(board)

    player.drop("A")
    player.drop("A")
    player.drop("A")
    player.drop("A")

    expect(game.vertical_win?).to eq(true)
    expect(game.turn).to eq("player1")
  end

  it "can check vertical win for computer" do
    board = Board.new
    game = Game.new(board)
    computer = Computer.new(board)

    game.switch
    computer.drop("A")
    computer.drop("A")
    computer.drop("A")
    computer.drop("A")

    expect(game.vertical_win?).to eq(true)
    expect(game.turn).to eq("computer")

  end

  it "can check for horizontal win for player" do
    board = Board.new
    game = Game.new(board)
    player = Player.new(board)

    player.drop("B")
    player.drop("C")
    player.drop("D")
    player.drop("E")

    expect(game.horizontal_win?).to eq(true)
    expect(game.turn).to eq("player1")
  end

  it "can check for horizontal win for computer" do
    board = Board.new
    game = Game.new(board)
    computer = Computer.new(board)

    game.switch
    computer.drop("B")
    computer.drop("C")
    computer.drop("D")
    computer.drop("E")

    expect(game.horizontal_win?).to eq(true)
    expect(game.turn).to eq("computer")

  end

  it "can check diagonal_win for player" do
    board = Board.new
    game = Game.new(board)
    computer = Computer.new(board)
    player = Player.new(board)

    game.switch
    computer.drop("E")
    game.switch
    player.drop("A")
    game.switch
    computer.drop("B")
    game.switch
    player.drop("D")
    game.switch
    computer.drop("C")
    game.switch
    player.drop("B")
    game.switch
    computer.drop("D")
    game.switch
    player.drop("C")
    game.switch
    computer.drop("D")
    game.switch
    player.drop("C")
    game.switch
    computer.drop("E")
    game.switch
    player.drop("D")

    expect(game.turn_win).to eq("xxxx")
    expect(game.diagonal_win?).to eq(true)
    expect(game.turn).to eq("player1")
  end
end
