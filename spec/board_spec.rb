require './lib/board'

RSpec.describe Board do

  it "exists" do
    board = Board.new

    expect(board).to be_an_instance_of(Board)
  end

  it "can print an empty board" do
    board = Board.new

  expect{board.print_board}.to output(" \nA B C D E F G\n. . . . . . .\n. . . . . . .\n. . . . . . .\n. . . . . . .\n. . . . . . .\n. . . . . . .\n \n").to_stdout

  end

end
