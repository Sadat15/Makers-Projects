require 'check_codeword'

RSpec.describe "check_codeword" do
  it "Respond correct if horse is given" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end 
  
  it "Respond close if word starts with H and ends with E" do
    result = check_codeword("hose")
    expect(result).to eq "Close, but nope."
  end
  
  it "Respond wrong if any other word" do
    result = check_codeword("saldkjfgsadl")
    expect(result).to eq "WRONG!"
  end
end

