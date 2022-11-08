require "reading_time"

# So that I can manage my time
# I want to see an estimate of reading time for a text,
#  assuming that I can read 200 words a minute.

# A method called reading_time that takes a series of words
# And returns the time it will take to read


RSpec.describe "reading_time method" do
    context "given an empty string as an argument" do
      it "returns 0" do
        result = reading_time("")
        expect(result).to eq 0
      end
    end

    context "given a string of 1 word" do
        it "returns 0.005" do
          result = reading_time("One")
          expect(result).to eq 0.005
        end
      end
  end
