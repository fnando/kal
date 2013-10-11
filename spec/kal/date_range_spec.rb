require "spec_helper"

describe Kal::DateRange do
  it "returns the initial date" do
    range = Kal::DateRange.new Date.new(2016, 1, 9)
    expect(range.start_date.to_s).to eql("2015-12-28")
  end

  it "returns ending date" do
    range = Kal::DateRange.new Date.new(2016, 2, 15)
    expect(range.end_date.to_s).to eql("2016-03-06")
  end

  it "returns the range" do
    range = Kal::DateRange.new Date.new(2016, 1, 9)
    expect(range.to_range).to eql(range.start_date..range.end_date)
  end
end
