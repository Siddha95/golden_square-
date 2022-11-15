require 'diary_entry'

RSpec.describe DiaryEntry do
    it "Constructs a diary entry" do
        diary_entry = DiaryEntry.new("title", "contents")
        result = diary_entry.title()
        expect(result).to eq "title"
    end

    it "Returns the contents of the entry" do
        diary_entry = DiaryEntry.new("title", "contents")
        result = diary_entry.contents()
        expect(result).to eq "contents"
    end

    it "Returns the word count of the contents" do
        diary_entry = DiaryEntry.new("title", "contents")
        result = diary_entry.count_words()
        expect(result).to eq 1
    end

    it "Returns 0 if content is empty" do
        diary_entry = DiaryEntry.new("title", "")
        result = diary_entry.count_words()
        expect(result).to eq 0
    end

    it "Returns 1 if content is one word" do
        diary_entry = DiaryEntry.new("title", "one")
        result = diary_entry.count_words()
        expect(result).to eq 1
    end

    it "Returns the word count of the contents" do
        diary_entry = DiaryEntry.new("title", "contents")
        result = diary_entry.count_words()
        expect(result).to eq 1
    end

  describe "@reading_time"
    it "fails if the wpm is zero" do
      diary_entry = DiaryEntry.new("my_title", "hello world")
      expect { diary_entry.reading_time(0) }.to raise_error "WPM must be positive."
    end
    it "Returns 0 if content is empty" do
        diary_entry = DiaryEntry.new("title", "")
        result = diary_entry.reading_time(2)
        expect(result).to eq 0
    end

     it "Returns 1 if content is one word" do
        diary_entry = DiaryEntry.new("title", "one")
        result = diary_entry.reading_time(2)
        expect(result).to eq 1
    end

    it "Returns the minutes it will take to read the contents" do
        diary_entry = DiaryEntry.new("title", "one two three four five six seven eight nine ten")
        result = diary_entry.reading_time(5)
        expect(result).to eq 2
    end


    describe "#reading_chunk" do

        it "Returns the first five words, given 2wpm and 2min" do
            diary_entry = DiaryEntry.new("title", "one two three four five six seven eight nine ten 11 12 13 14 15")
            result = diary_entry.reading_chunk(2, 2)
            expect(result).to eq "one two three four"
        end

        it "Returns the middle five words, given 2wpm and 2min, twice" do
            diary_entry = DiaryEntry.new("title", "one two three four five six seven eight nine ten 11 12 13 14 15")
            diary_entry.reading_chunk(2, 2)
            result = diary_entry.reading_chunk(2, 2)
            expect(result).to eq "five six seven eight"
        end

        it "Returns the final five words, given 2wpm and 2min, three times" do
            diary_entry = DiaryEntry.new("title", "one two three four five six seven eight nine ten 11 12 13 14 15")
            diary_entry.reading_chunk(2, 2)
            diary_entry.reading_chunk(2, 2)
            result = diary_entry.reading_chunk(2, 2)
            expect(result).to eq "nine ten 11 12"
        end

        it "Returns the whole block given there is more time than words to read " do
            diary_entry = DiaryEntry.new("title", "one two three four five")
            result = diary_entry.reading_chunk(10, 1)
            expect(result).to eq "one two three four five"
        end

        it "retarts after reading the whole contents" do
            diary_entry = DiaryEntry.new("title", "one two three four")
            diary_entry.reading_chunk(4,1)
            result = diary_entry.reading_chunk(2,1)
            expect(result).to eq "one two"
        end

        it "retarts after reading the whole contents" do
            diary_entry = DiaryEntry.new("title", "one two three four")
            diary_entry.reading_chunk(2,1)
            diary_entry.reading_chunk(2,1)
            result = diary_entry.reading_chunk(2,1)
            expect(result).to eq "one two"
        end


    end
end
