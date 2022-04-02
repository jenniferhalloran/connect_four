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

  # xit "can return a random column from the computer" do
  #   board = Board.new
  #   game = Game.new(board)
  #
  #   expect(game.computer_choice).to eq("a" || "b" || "c" || "d" || "e" || "f" || "g")
  # end
  # I'm not sure if this is possible???

  it "can access columns from the board" do
    board = Board.new
    computer = Computer.new(board)

    expect(computer.board.column_a).to eq(['.','.','.','.','.','.'])
  end


  it "can change first empty index of every column to an 'o'" do
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

end