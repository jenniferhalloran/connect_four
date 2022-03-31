
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

    expect{game.start_game}.to output("\"Welcome to Connect 4!\"\n\"Please enter a column A - G to place your first piece!\"\n").to_stdout #Not sure how to get this to return the multiline message
  end

  it "can access columns from the board" do
    board = Board.new
    game = Game.new(board)

    expect(board.column_a).to eq(['.','.','.','.','.','.'])
  end

  it "can change index 0 of column a" do
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
end
