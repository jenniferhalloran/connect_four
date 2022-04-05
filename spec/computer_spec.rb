require './lib/board'
require './lib/game'
require './lib/computer'
require 'pry'

RSpec.describe Computer do
  it "exists" do
    board = Board.new
    computer = Computer.new(board)
  expect(computer).to be_an_instance_of(Computer)
end

  it "initializes with a board" do
    board = Board.new
    computer = Computer.new(board)
  expect(computer.board).to eq(board)
end

  it "can access columns from the board" do
    board = Board.new
    computer = Computer.new(board)

    expect(computer.board.column_a).to eq(['.','.','.','.','.','.'])
  end

  it "can choose a column" do
    board = Board.new
    computer = Computer.new(board)

  expect(board.columns.include?(computer.choose_column)).to eq(true)
  end

  it "can validate columns" do
    board = Board.new
    computer = Computer.new(board)

  expect(computer.available_column?("D")).to eq(true)
  end

  it "can drop an 'o' on the board" do
    board = Board.new
    computer = Computer.new(board)
    computer.drop("A")
    computer.drop("B")
    computer.drop("C")
    computer.drop("D")
    computer.drop("E")
    computer.drop("F")
    computer.drop("G")

    expect(board.column_a).to eq(['o','.','.','.','.','.'])
    expect(board.column_b).to eq(['o','.','.','.','.','.'])
    expect(board.column_c).to eq(['o','.','.','.','.','.'])
    expect(board.column_d).to eq(['o','.','.','.','.','.'])
    expect(board.column_e).to eq(['o','.','.','.','.','.'])
    expect(board.column_f).to eq(['o','.','.','.','.','.'])
    expect(board.column_g).to eq(['o','.','.','.','.','.'])

    computer.drop("G")

    expect(board.column_g).to eq(['o','o','.','.','.','.'])
  end

  it "can drop an 'o' on top of another 'o'" do
    board = Board.new
    computer = Computer.new(board)
    computer.drop("A")
    computer.drop("B")
    computer.drop("C")
    computer.drop("D")
    computer.drop("E")
    computer.drop("F")
    computer.drop("G")

    expect(board.column_a).to eq(['o','.','.','.','.','.'])
    expect(board.column_b).to eq(['o','.','.','.','.','.'])
    expect(board.column_c).to eq(['o','.','.','.','.','.'])
    expect(board.column_d).to eq(['o','.','.','.','.','.'])
    expect(board.column_e).to eq(['o','.','.','.','.','.'])
    expect(board.column_f).to eq(['o','.','.','.','.','.'])
    expect(board.column_g).to eq(['o','.','.','.','.','.'])

    computer.drop("G")

    expect(board.column_g).to eq(['o','o','.','.','.','.'])
  end

  it "can drop an 'o' into a column where an 'x' already exist" do
    board = Board.new
    computer = Computer.new(board)
    player = Player.new(board)

    player.drop("B")
    computer.drop("B")
    player.drop("E")
    player.drop("E")
    computer.drop("E")

    expect(board.column_b).to eq(['x','o','.','.','.','.'])
    expect(board.column_e).to eq(['x','x','o','.','.','.'])
  end
end
