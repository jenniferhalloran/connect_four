require './lib/board'
require './lib/columns'

RSpec.describe Columns do

  it "exists" do
    columnA = Columns.new("A", 0)

    expect(columnA).to be_an_instance_of(Columns)
  end

  it "has readable attributes" do
    columnA = Columns.new("A", 0)

    expect(columnA.name).to eq("A")
    expect(columnA.index).to eq(0)
  end

end
