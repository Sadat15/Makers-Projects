require 'Diary_2'

RSpec.describe DiaryEntry do
  it "Creates a new diary entry by taking in 2 parameters: title and contents " do
    diary = DiaryEntry.new("Tuesday", "Today is tuesday")
    result1 = diary.title
    result2 = diary.contents
    expect(result1).to eq "Tuesday"
    expect(result2).to eq "Today is tuesday"
  end
  
  context "when no title are entered" do
    it "fails" do
      diary = DiaryEntry.new("","test")
      expect { diary.title }.to raise_error "No title has been entered."
    end
  end
  
  context "when no contents are entered" do
    it "fails" do
      diary = DiaryEntry.new("test","")
      expect { diary.contents }.to raise_error "No contents have been entered."
    end
  end
  
  it "returns number of words in contents" do
    diary = DiaryEntry.new("Tuesday", "Today is tuesday")
    result = diary.count_words
    expect(result).to eq 3
  end
  
  it "returns the estimed time to read text within contents when wpm is 100" do
    diary = DiaryEntry.new("Tuesday", "Today "*100)
    result = diary.reading_time(100)
    expect(result).to eq 1
  end
  
end