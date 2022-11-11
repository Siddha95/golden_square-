require "music_tracker"

RSpec.describe MusicTracker do

  context '#with no tracks in the list' do
    it "displays an empty list" do
     music_tracker = MusicTracker.new
     result = music_tracker.list
    expect(result).to eq []
   end
  end

  context '#by adding a track to the list' do
    it "adds the track and display" do
      music_tracker = MusicTracker.new
      music_tracker.add("Eminem: Lose Yourself")
      result = music_tracker.list
      expect(result).to eq ["Eminem: Lose Yourself"]
    end
  end

  context '#by adding many tracks to the list' do
    it "adds the tracks and display the list" do
      music_tracker = MusicTracker.new
      music_tracker.add("Eminem: Lose Yourself")
      music_tracker.add("Eminem: Monster ft. Rihanna")
      music_tracker.add("Eminem: Stan")
      music_tracker.add("Eminem: Sing for The Moment")
      result = music_tracker.list
      expect(result).to eq ["Eminem: Lose Yourself", "Eminem: Monster ft. Rihanna", "Eminem: Stan", "Eminem: Sing for The Moment"]
    end
  end
end
