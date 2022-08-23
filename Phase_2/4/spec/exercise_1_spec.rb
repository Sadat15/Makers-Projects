require 'exercise_1'

RSpec.describe "decode method" do
  it "returns the string 'theswiftfoxjumpedoverthelazydog' when ciphertext is 'EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL and key is 'secretkey" do
    result = decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
    expect(result).to eq "theswiftfoxjumpedoverthelazydog"
  end
  
end