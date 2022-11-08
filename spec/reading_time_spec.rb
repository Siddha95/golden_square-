require "reading_time"

RSpec.describe "reading_time method" do
    context "given an empty string as an argument" do
      it "returns 0" do
        result = reading_time("1")
        expect(result).to eq 0
      end
    end

    context "given a string of 20 words" do
        it "returns 6" do
          result = reading_time("1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20")
          expect(result).to eq 6
        end
      end
  end 