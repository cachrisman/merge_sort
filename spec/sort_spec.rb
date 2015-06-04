require_relative("../sort")

describe "sort" do
  it "should return an empty array if array is empty" do
    expect(sort([])).to eql([])
    input = []
    expect(sort(input)).to_not be(input)
  end
end
