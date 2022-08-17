require 'personal_diary_system'

RSpec.describe "make_snippet" do
  it "returns 5 words of the string input" do
    result = make_snippet("Welcome to my personal diary. This is where I document my life.")
    expect(result).to eq "Welcome to my personal diary. ..."
  end
  
  it "returns the number of words in the string" do
    result = count_words("Welcome to my personal diary. This is where I document my life.")
    expect(result).to eq 12
  end  
end
  