require 'challenge'

RSpec.describe TrackList do
  it "returns list of songs added to the track list" do
    songs = TrackList.new
    songs.add("Scorpion - Drake")
    result = songs.list
    expect(result).to eq ["Scorpion - Drake"]
  end
  
  context "when list is empty" do
    it "fails"do
      songs = TrackList.new
      expect { songs.list }.to raise_error "no songs have been added"
    end
  end
  
end