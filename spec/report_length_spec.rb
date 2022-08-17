require 'report_length'

RSpec.describe "report_length" do
  it "Returns 5 characters long for the word hello" do
    result = report_length("Hello")
    expect(result).to eq "This string was 5 characters long."
  end
  
  it "Returns 0 characters long for the word '' " do
    result = report_length("")
    expect(result).to eq "This string was 0 characters long."
  end
end