require 'challenge'

RSpec.describe "returns the most common letter" do
  it "returns 'o' when the inputted text is 'the roof, the roof, the roof is on fire!' " do
    result = get_most_common_letter("the roof, the roof, the roof is on fire!")
    expect(result).to eq "o"
  end
  
end