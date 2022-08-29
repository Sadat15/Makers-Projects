require 'challenge'

RSpec.describe GrammerStats do
    it "checks the text to see if the first letter in the text is a capital letter and ends in a sentence-ending punctuation mark" do
        sentence = GrammerStats.new
        result = sentence.check("Does this sentence begin with a capital and end with a question mark?")
        expect(result). to eq true
    end

    it "checks if the first character is not capital and last character is a sentence ending punctuation mark" do
        sentence = GrammerStats.new
        result = sentence.check("does this sentence begin with a capital and end with a question mark?")
        expect(result). to eq false
    end

    it "checks to see if the first character is capital and does not end with a sentence ending punctuation mark" do
        sentence = GrammerStats.new
        result = sentence.check("Does this sentence begin with a capital and end with a question mark")
        expect(result). to eq false
    end

    it "returns an integer with the correct number tests that have passed" do
        sentence = GrammerStats.new
        sentence.check("how is the weather today?")
        sentence.check("The weather is very nice today.")
        sentence.percentage_good
        result = sentence.percentage_good
        expect(result).to eq 50
    end

end