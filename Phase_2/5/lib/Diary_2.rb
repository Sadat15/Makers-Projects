class DiaryEntry
  
  def initialize(title, contents)
    @title = title
    @contents = contents
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
    @contents.split(" ").length
  end
  
  def reading_time(wpm)
    @time = (count_words/wpm.to_f).ceil
    return @time
  end
  
  def reading_chunk(wpm, minutes)
  end  


end
