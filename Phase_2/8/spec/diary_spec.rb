require 'diary'

RSpec.describe Diary do
  it "constructs" do 
    diary = Diary.new
  end
  
  it "returns empty array " do
    diary = Diary.new
    # diary_entry_1 = DiaryEntry.new("Monday", "Today is Monday.")
    result = diary.all()
    expect(result).to eq []
  end

  context "has a reading time of 0" do
    it "fails" do
      diary = Diary.new()
      expect { diary.reading_time(0) }.to raise_error "wpm cannot be less than 1"
    end
  end

  
end