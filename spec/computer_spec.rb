require './lib/board'
require './lib/game'
require './lib/computer'
require 'pry'

RSpec.describe Computer do
  it "exists" do
    board = Board.new
    computer = Computer.new(board)
  expect(computer).to be_an_instance_of(Computer)
end #Test that the computer exists

  it "initializes with a board" do
    board = Board.new
    computer = Computer.new(board)
  expect(computer.board).to eq(board)
end #Test that the computer has a board

  it "can access columns from the board" do
    board = Board.new
    computer = Computer.new(board)

    expect(computer.board.column_a).to eq(['.','.','.','.','.','.'])
  end #Test that the computer can accest columns

  xit "can select a random column" do
    board = Board.new
    computer = Computer.new(board)
    columns = [a, b, c, d, e, f, g]

    expect(computer.choose_column).to eq()
  end

  it "can change first empty index of every column to an 'o'" do
    board = Board.new
    computer = Computer.new(board)
    computer.drop("a")
    computer.drop("b")
    computer.drop("c")
    computer.drop("d")
    computer.drop("e")
    computer.drop("f")
    computer.drop("g")

    expect(board.column_a).to eq(['o','.','.','.','.','.'])
    expect(board.column_b).to eq(['o','.','.','.','.','.'])
    expect(board.column_c).to eq(['o','.','.','.','.','.'])
    expect(board.column_d).to eq(['o','.','.','.','.','.'])
    expect(board.column_e).to eq(['o','.','.','.','.','.'])
    expect(board.column_f).to eq(['o','.','.','.','.','.'])
    expect(board.column_g).to eq(['o','.','.','.','.','.'])

    computer.drop("g")

    expect(board.column_g).to eq(['o','o','.','.','.','.'])
  end # Test the computer can add an "o" to the board




end
