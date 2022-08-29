class DiaryEntry
  
  def initialize(title, contents)
    @title = title
    @contents = contents
    @start = 0
  end

  def title
    fail "No title has been entered." if @title.empty?
    return @title
  end
  
  def contents
    fail "No contents have been entered." if @contents.empty?
    return @contents
  end
  
  def count_words
    @contents.split(/\s+/).length
  end
  
  def reading_time(wpm)
    fail "wpm cannot be less than or equal to 0" if wpm <= 0
    @time = (count_words/wpm.to_f).ceil
    return @time
  end
  
  def reading_chunk(wpm, minutes)
    if wpm > count_words
      return @contents
    elsif
      number_of_words = wpm * minutes
      end_at = @start + number_of_words
      if end_at > count_words
        @start = 0
      end
      text = @contents.split(" ")[@start, number_of_words]
      @start = end_at
      return text.join(" ")
    end
  end

end