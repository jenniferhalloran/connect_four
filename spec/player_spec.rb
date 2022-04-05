require './lib/board'
require './lib/player'
require './lib/game'
require 'pry'

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

  it "tells the player invalid column if they don't respond with A-G" do
    board = Board.new
    player = Player.new(board)
    column_choice = "p"

    expect(player.valid_input?(column_choice)).to eq(false)
  end

  it "can choose a column" do
    board = Board.new
    computer = Computer.new(board)
    player = Player.new(board)

    allow($stdin).to receive(:gets).and_return('A')
    column = $stdin.gets

    expect(column).to eq('A')

    expect(player.available_column?(column)).to eq(true)
  end

  it "can validate columns" do
    board = Board.new
    player = Player.new(board)
    player.drop("E")
    player.drop("E")
    player.drop("E")
    player.drop("E")
    player.drop("E")
    player.drop("E")

    expect(player.available_column?("D")).to eq(true)
    expect(player.available_column?("E")).to eq(false)
    end

  it "can drop an 'x' on the board" do
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
  end

  it "can drop an 'x' on top of another 'x'" do
    board = Board.new
    player = Player.new(board)
    player.drop("A")
    player.drop("B")
    player.drop("C")
    player.drop("D")
    player.drop("E")
    player.drop("F")
    player.drop("G")

    expect(board.column_a).to eq(['x','.','.','.','.','.'])
    expect(board.column_b).to eq(['x','.','.','.','.','.'])
    expect(board.column_c).to eq(['x','.','.','.','.','.'])
    expect(board.column_d).to eq(['x','.','.','.','.','.'])
    expect(board.column_e).to eq(['x','.','.','.','.','.'])
    expect(board.column_f).to eq(['x','.','.','.','.','.'])
    expect(board.column_g).to eq(['x','.','.','.','.','.'])

    player.drop("D")

    expect(board.column_d).to eq(['x','x','.','.','.','.'])
  end

  it "can drop an 'x' into a column where an 'o' already exist" do
    board = Board.new
    computer = Computer.new(board)
    player = Player.new(board)

    computer.drop("C")
    player.drop("C")
    computer.drop("D")
    computer.drop("D")
    player.drop("D")

    expect(board.column_c).to eq(['o','x','.','.','.','.'])
    expect(board.column_d).to eq(['o','o','x','.','.','.'])
  end
end
