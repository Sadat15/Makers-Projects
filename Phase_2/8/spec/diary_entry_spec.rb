require 'diary_entry'

RSpec.describe DiaryEntry do
  it "constructs" do
    diary_entry = DiaryEntry.new("Monday","Today is Monday.")
  end

  it "returns the title" do
    diary_entry = DiaryEntry.new("Monday", "Today is Monday.")
    result = diary_entry.title
    expect(result).to eq "Monday"
  end

  it "returns the contents of a diary entry" do
    diary_entry = DiaryEntry.new("Monday", "Today is Monday")
    result = diary_entry.contents
    expect(result).to eq "Today is Monday"
  end

  it "returns the total number of words in the contents of a diary entry" do
    diary_entry = DiaryEntry.new("Monday", "Today is Monday")
    result = diary_entry.count_words
    expect(result).to eq 3
  end

  it "returns the estimated reading time of contents of an entry" do
    diary_entry = DiaryEntry.new("Monday", "Today is Monday")
    result = diary_entry.reading_time(1)
    expect(result).to eq 3
  end

  it "returns a number of a user can read within a given time frame " do
    diary_entry = DiaryEntry.new("Monday", "Today is Monday.")
    result = diary_entry.reading_chunk(1, 2)
    expect(result).to eq "Today is"
  end

  it "returns a number of a user can read within a given time frame " do
    diary_entry = DiaryEntry.new("Monday", "Today is Monday.")
    result = diary_entry.reading_chunk(1, 2)
    expect(result).to eq "Today is"
  end 

end