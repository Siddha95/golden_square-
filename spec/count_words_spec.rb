require "count_words"

# A method called count_words that takes a string as an argument
# and returns the number of words in that string.

RSpec.describe "count_words method" do
  context "given a string as an argument" do
    it "returns the number of words in that string" do
      result = count_words("spaghetti")
      expect(result).to eq 1
    end
  end
end 
