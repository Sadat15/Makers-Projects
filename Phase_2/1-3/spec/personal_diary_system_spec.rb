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
  
  it "returns the estimated time taken to read string" do
    result = read_time(" ") 
    expect(result).to eq 0
  end
  
  it "returns the estimated time taken to read string" do
    result = read_time("One") 
    expect(result).to eq 1
  end
  
  it "returns false when string is empty" do
    result = grammer_check(" ")
    expect(result).to eq true
  end
  
  it "returns false when string does not start with uppercase character" do
    result = grammer_check("hello!")
    expect(result).to eq false
  end
  
  it "returns true when string starts with uppercase character and ends in question mark" do
    result = grammer_check("Hello?")
    expect(result).to eq true
  end
  
  it "returns false when string contains no words" do
    result = contains_todo("")
    expect(result).to eq false
  end
  
  it "returns false when string does not contain '#TODO' " do
    result = contains_todo("hello hello hello")
    expect(result).to eq false
  end
  
  it "returns true when string contains '#TODO'" do
    result = contains_todo("helo hello hello #TODO hello")
    expect(result).to eq true
end
  
  
end
  