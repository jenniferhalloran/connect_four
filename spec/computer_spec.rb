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
  end

  it "can select columns" do
    board = Board.new
    computer = Computer.new(board)

  expect(board.columns.include?(computer.choose_column)).to eq(true)
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
  end # Test the computer can add an "o" to the board




end
