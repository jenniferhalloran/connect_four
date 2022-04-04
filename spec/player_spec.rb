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


  it "can change first empty index of every column to an x" do
    board = Board.new
    player = Player.new(board)
    player.drop("A")
    player.drop("B")
    player.drop("C")
    player.drop("D")
    player.drop("E")
    player.drop("F")
    player.drop("G")

    expect(player.board.column_a).to eq(['x','.','.','.','.','.'])
    expect(player.board.column_b).to eq(['x','.','.','.','.','.'])
    expect(player.board.column_c).to eq(['x','.','.','.','.','.'])
    expect(player.board.column_d).to eq(['x','.','.','.','.','.'])
    expect(player.board.column_e).to eq(['x','.','.','.','.','.'])
    expect(player.board.column_f).to eq(['x','.','.','.','.','.'])
    expect(player.board.column_g).to eq(['x','.','.','.','.','.'])

    player.drop("G")

    expect(player.board.column_g).to eq(['x','x','.','.','.','.'])
  end

  it "tells the player invalid column if they don't respond with A-G" do
    board = Board.new
    player = Player.new(board)

    expect(player.validate_input("p")).to eq("Silly goose, that's not a column! Try again.")
  end

end
