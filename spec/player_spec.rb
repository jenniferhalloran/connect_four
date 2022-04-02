require './lib/board'
require './lib/player'
require './lib/game'

RSpec.describe Player do

  it "exists" do
    board = Board.new
    player = Player.new(board)

    expect(player).to be_an_instance_of(Player)
  end

  it "initializes with a board" do
    board = Board.new
    player = Player.new(board)
  expect(player.board).to eq(board)
  end

  it "can access columns from the board" do
    board = Board.new
    player = Player.new(board)

    expect(player.board.column_a).to eq(['.','.','.','.','.','.'])
  end


  xit "can change first empty index of every column to an x" do
    board = Board.new
    player = Player.new(board)
    player.drop("a")
    player.drop("b")
    player.drop("c")
    player.drop("d")
    player.drop("e")
    player.drop("f")
    player.drop("g")

    expect(player.board.column_a).to eq(['x','.','.','.','.','.'])
    expect(player.board.column_b).to eq(['x','.','.','.','.','.'])
    expect(player.board.column_c).to eq(['x','.','.','.','.','.'])
    expect(player.board.column_d).to eq(['x','.','.','.','.','.'])
    expect(player.board.column_e).to eq(['x','.','.','.','.','.'])
    expect(player.board.column_f).to eq(['x','.','.','.','.','.'])
    expect(player.board.column_g).to eq(['x','.','.','.','.','.'])

    player.drop("g")

    expect(player.board.column_g).to eq(['x','x','.','.','.','.'])
  end

  xit "tells the player invalid column if they don't respond with A-G" do
    board = Board.new
    player = Player.new(board)

    expect(player.drop("p")).to eq("Silly goose, that's not a column! Try again.")
  end

end
