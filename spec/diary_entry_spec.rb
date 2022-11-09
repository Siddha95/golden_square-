#require "diary_entry"

#def initialize
   # ...
 #end

 #def check(text) # text is a string
   # Returns true or false depending on whether the text begins with a capital
   # letter and ends with a sentence-ending punctuation mark.
 #end

 #def percentage_good
   # Returns as an integer the percentage of texts checked so far that passed
   # the check defined in the `check` method. The number 55 represents 55%.
 #end
#end

#RSpec.describe DiaryEntry do
  #it "constructs" do
  #  diary_entry = DiaryEntry.new("my_title", "my_contents")
  #  expect(diary_entry.title).to eq "my_title"
  #  expect(diary_entry.contents).to eq "my_contents"
  #end

  #describe "@count_words" do
  #  it "returns the number of words in the contents" do
  #    diary_entry = DiaryEntry.new("my_title", "some contents here")
  #    expect(diary_entry.count_words).to eq 3
  #  end


  #  it "returns zero when the contents is empty" do
  #    diary_entry = DiaryEntry.new("my_title", "")
  #    expect(diary_entry.count_words).to eq 0
  #  end
  #end

  #describe "@reading_time" do
  #  context "give a wpc of some sensible number (200)" do
  #    it "returns the ceiling of the number of minutes it takes to read read the contents"
  #      diary_entry = DiaryEntry.new("my_title", "one ") * 550)
  #      expect(diary_entry.reading_time(200)).to eq 3
  #    end


  #   context "given a wpm of 0" do
  #     it "fails" do
  #       diary_entry = DiaryEntry.new("my_title", "one two three")
  #       expect { diary_entry.reading_time(0) }.to raise_error "Reading speed must be above zero."
  #     end
  #   end
  #  end
#  end
