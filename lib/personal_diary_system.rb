def make_snippet(str)
  snippet_arr = str.split(" ")
  snippet_arr = snippet_arr[0..4].join(" ")
  snippet_arr = snippet_arr << " ..."
end

def count_words(str)
  str.split(" ").count
end

def read_time(str)
  word_count = count_words(str)
  time_to_read = word_count/200.to_f
  return time_to_read.ceil
end

def grammer_check(str)
  if (str.chr == str.chr.upcase)
    if (str[-1] == ".") || (str[-1] == "!") || (str[-1] == "?")
    end 
    return true
  else
    return false
  end

end