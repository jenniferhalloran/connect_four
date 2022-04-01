
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

  # xit "can return a random column from the computer" do
  #   board = Board.new
  #   game = Game.new(board)
  #
  #   expect(game.computer_choice).to eq("a" || "b" || "c" || "d" || "e" || "f" || "g")
  # end
  # I'm not sure if this is possible???

  it "can change first empty index of every column to an x" do
    board = Board.new
    game = Game.new(board)
    game.drop("a")
    game.drop("b")
    game.drop("c")
    game.drop("d")
    game.drop("e")
    game.drop("f")
    game.drop("g")

    expect(board.column_a).to eq(['x','.','.','.','.','.'])
    expect(board.column_b).to eq(['x','.','.','.','.','.'])
    expect(board.column_c).to eq(['x','.','.','.','.','.'])
    expect(board.column_d).to eq(['x','.','.','.','.','.'])
    expect(board.column_e).to eq(['x','.','.','.','.','.'])
    expect(board.column_f).to eq(['x','.','.','.','.','.'])
    expect(board.column_g).to eq(['x','.','.','.','.','.'])

    game.drop("g")

    expect(board.column_g).to eq(['x','x','.','.','.','.'])
  end

  it "tells the player invalid column if they don't respond with A-G" do
    board = Board.new
    game = Game.new(board)

    expect(game.drop("p")).to eq("Silly goose, that's not a column! Try again.")
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

  it "can change first empty index of every column to an o" do
    board = Board.new
    game = Game.new(board)
    game.switch
    game.drop("a")
    game.drop("b")
    game.drop("c")
    game.drop("d")
    game.drop("e")
    game.drop("f")
    game.drop("g")

    expect(board.column_b).to eq(['o','.','.','.','.','.'])
    expect(board.column_a).to eq(['o','.','.','.','.','.'])
    expect(board.column_c).to eq(['o','.','.','.','.','.'])
    expect(board.column_d).to eq(['o','.','.','.','.','.'])
    expect(board.column_e).to eq(['o','.','.','.','.','.'])
    expect(board.column_f).to eq(['o','.','.','.','.','.'])
    expect(board.column_g).to eq(['o','.','.','.','.','.'])

    game.drop("g")

    expect(board.column_g).to eq(['o','o','.','.','.','.'])
  end

end
