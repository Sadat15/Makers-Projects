class Diary
  def initialize
    @entries_arr = []
    
  end

  def add(entry)
    @entries_arr << entry

  end

  def all
    return @entries_arr.each { |entry| puts entry }

  end

  def count_words
    @entries_arr.sum { |contents| contents.count_words }

  end

  def reading_time(wpm)
     fail "wpm cannot be less than 1" if wpm < 1
     @total_time = (count_words.to_f/wpm.to_f).ceil
     return @total_time

  end

  def find_best_entry_for_reading_time(wpm, minutes)
    @reading_times_arr = []
    @entries_arr.each { |x| @reading_times_arr << x.reading_time(wpm) }
    closest = @reading_times_arr.delete_if { |time| time > minutes }.min_by{|x| (minutes-x).abs}
    @entries_arr.select { |entry| entry.count_words == closest }
  end

end

diary = Diary.new
entry_1 = DiaryEntry.new("Monday", "Today is Monday")