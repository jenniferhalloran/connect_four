require './lib/board'

RSpec.describe Board do
  before(:each) do
    a = Column.new("A", 0)
    b = Column.new("B", 1)
    c = Column.new("C", 2)
    d = Column.new("D", 3)
    e = Column.new("E", 4)
    f = Column.new("F", 5)
    g = Column.new("G", 6)

    @columns = [a, b, c, d, e, f, g]

    @board = Bard.new(columns)

    it "exists" do
      expect(@board).to be_an_instance_of(Board)
    end

    it "has readable attributes" do
      expect(@board.columns).to eq([a, b, c, d, e, f, g])
    end

    it "can print an empty board" do
      expect{@board.print_board}.to output(
        <<~EXPECTED
        \nA B C D E F G\n. . . . . . .\n. . . . . . .\n. . . . . . .\n. . . . . . .\n. . . . . . .\n. . . . . . .\n-------------\n
        EXPECTED
      ).to_stdout
    end
  end
end
