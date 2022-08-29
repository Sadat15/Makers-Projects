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
   
  context "Returns an error if wpm is less than or equal to 0" do
    it "fails" do
      diary = DiaryEntry.new("Tuesday", "Today is tuesday")
      expect { diary.reading_time(-10) }.to raise_error "wpm cannot be less than or equal to 0"
    end
  end

  it "returns a string with the number of words the user can read depending on the wpm and minutes the user has to read" do
    diary = DiaryEntry.new("Wednesday", "Today is Wednesday.")
    result = diary.reading_chunk(10, 1)
    expect(result).to eq "Today is Wednesday."
  end

  it "returns a string with the number of words the user can read depending on the wpm and minutes the user has to read" do
    diary = DiaryEntry.new("Wednesday", "Her mom had warned her. She had been warned time and again, but she had refused to believe her. She had done everything right and she knew she would be rewarded for doing so with the promotion. So when the promotion was given to her main rival, it not only stung, it threw her belief system into disarray. It was her first big lesson in life, but not the last.")
    result = diary.reading_chunk(10, 5)
    expect(result).to eq "Her mom had warned her. She had been warned time and again, but she had refused to believe her. She had done everything right and she knew she would be rewarded for doing so with the promotion. So when the promotion was given to her main rival, it not only"
  end

  it "returns a string with the number of words the user can read depending on the wpm and minutes the user has to read" do
    diary = DiaryEntry.new("Wednesday", "Hello, today is Thursday. It is a lovely day to do some coding.")
    diary.reading_chunk(2, 1)
    result = diary.reading_chunk(2, 1)
    expect(result).to eq "is Thursday."
  end

  it "restarts after reading the whole contents" do
    diary = DiaryEntry.new("Wednesday", "Her mom had warned her. She had been warned time and again, but she had refused to believe her. She had done everything right and she knew she would be rewarded for doing so with the promotion. So when the promotion was given to her main rival, it not only stung, it threw her belief system into disarray. It was her first big lesson in life, but not the last.")
    diary.reading_chunk(10, 2)
    diary.reading_chunk(10, 5)
    result = diary.reading_chunk(10, 2)
    expect(result).to eq "Her mom had warned her. She had been warned time and again, but she had refused to believe her. She"
  end

end