require "diary_entry1"

RSpec.describe DiaryEntry do
  it "construcs" do
    diary_entry = DiaryEntry.new("my title", "my contents")
    expect(diary_entry.contents).to eq "my contents"
    expect(diary_entry.title).to eq "my title"
  end
end
