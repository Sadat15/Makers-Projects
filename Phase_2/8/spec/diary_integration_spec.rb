require 'diary'
require 'diary_entry'

RSpec.describe "diary integration" do
  it "gets all diary entries" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("Monday", "Today is Monday.")
    diary_entry_2 = DiaryEntry.new("Tuesday", "Today is Tuesday.")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.all).to eq [diary_entry_1, diary_entry_2]
  end

  it "returns the total number of words in contents" do 
    diary = Diary.new
    diary_entry = DiaryEntry.new("Monday", "Today is Monday.")
    diary.add(diary_entry)
    expect(diary.count_words).to eq 3
  end

  it "returns the total number of words in contents" do 
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("Monday", "Today is Monday.")
    diary_entry_2 = DiaryEntry.new("Tuesday", "Today is Tuesday.")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.reading_time(1)).to eq 6
  end

  it "returns the total number of words in contents" do 
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("Monday", "Today is Monday.")
    diary_entry_2 = DiaryEntry.new("Tuesday", "Today is a nice Tuesday.")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.find_best_entry_for_reading_time(1, 3)).to eq [diary_entry_1]
  end
end