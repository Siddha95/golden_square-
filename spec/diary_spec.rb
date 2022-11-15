require 'diary'

RSpec.describe Diary do
  context "Initially" do
    it "is empty" do
      diary = Diary.new
      expect(diary.all).to eq []
    end

    it "has a best readable entry of nil" do
      diary = Diary.new
      expect(diary.find_best_entry_for_reading_time(2, 1)).to eq nil
    end
  end
end
