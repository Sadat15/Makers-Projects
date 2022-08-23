require 'gratitudes'

RSpec.describe Gratitudes do
  it "adding words to the gratitudes array" do
    gratitudes = Gratitudes.new
    gratitudes.add("family")
    result = gratitudes.format()
    expect(result).to eq "Be grateful for: family"
  end
  
  it "adding words to the gratitudes array" do
    gratitudes = Gratitudes.new
    gratitudes.add("family")
    gratitudes.add("friends")
    gratitudes.add("food")
    gratitudes.add("shelter")
    result = gratitudes.format()
    expect(result).to eq "Be grateful for: family, friends, food, shelter"
  end
end