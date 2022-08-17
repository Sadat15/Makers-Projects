require 'greet'

RSpec.describe "greet" do
  it "Says hello to Joe" do
    result = greet("Joe")
    expect(result).to eq "Hello, Joe!"
  end
end