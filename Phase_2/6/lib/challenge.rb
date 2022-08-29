class TrackList
  def initialize
    @list_arr = []
  end
  
  def add(track)
    @list_arr << track
  end
  
  def list
    fail "no songs have been added" if @list_arr.empty?
    return @list_arr.each { |track| puts track}
  end
  
  
end