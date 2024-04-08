require_relative '../lib/day_trader'

describe "day_trader" do
 it "returns the best buy and sell days for a given array of prices" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
 end

 it "returns the best buy and sell days for a single price" do
    expect(day_trader([100])).to eq([0, 0])
 end

 it "returns the best buy and sell days for an empty array" do
    expect(day_trader([])).to eq([])
 end
end
