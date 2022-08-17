def make_snippet(str)
  snippet_arr = str.split(" ")
  snippet_arr = snippet_arr[0..4].join(" ")
  snippet_arr = snippet_arr << " ..."
end

def count_words(str)
  str.split(" ").count
end
