require 'todo'
require 'todo_list'

RSpec.describe 'integration' do
  context "when we add entries to the list" do
    it "adds the entries to the list" do
      todo = TodoList.new
      todo_entry = Todo.new("my_todo")
      todo_entry2 = Todo.new("my_todo2")
      todo.add(todo_entry)
      todo.add(todo_entry2)
      expect(todo.incomplete).to eq [todo_entry, todo_entry2]
    end

=begin
      describe "@count_words" do
    it "returns the number of words in all entries contents" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("my_title1", "my_content 1")
      diary_entry2 = DiaryEntry.new("my_title2", "my_content 2")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.count_words).to eq 4
    end
  end

  describe "reading time behavior" do
    it "fails where wpm is 0" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my title", "my_contents 1")
      diary.add(diary_entry_1)
      expect {diary.reading_time(0) }.to raise_error ("WPM must be positive.")
    end

    it "calculates the reading time for all entries" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("my_title1", "my contents 1")
      diary_entry2 = DiaryEntry.new("my_title2", "my content 2")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.reading_time(2)).to eq 3
  end
end

  describe "reading time behavior" do
    it "calculates the reading time for all entries" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("my_title1", "my contents")
      diary_entry2 = DiaryEntry.new("my_title2", "my content 2")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.reading_time(2)).to eq 3
  end
end

describe "best reading time entry behavior" do
  context "where we just have one entry and it is readable in the time" do
    it "returns that entry" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my_title1", "my contents")
      diary.add(diary_entry_1)
      result = diary.find_best_entry_for_reading_time(2, 1)
      expect(result).to eq diary_entry_1
    end
  end

  context "where we just have one entry and it is readable in the time" do
    it "returns nil" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my_title1", "my contents longer")
      diary.add(diary_entry_1)
      result = diary.find_best_entry_for_reading_time(2, 1)
      expect(result).to eq nil
    end
  end

  context "where we have multiple entries" do
    it "returns the longest entry the user could read in this time" do
      diary = Diary.new
      best_entry = DiaryEntry.new("my_title", "one two")
      diary.add(DiaryEntry.new("my title", "one"))
      diary.add(best_entry)
      diary.add(DiaryEntry.new("my title", "one two three"))
      diary.add(DiaryEntry.new("my title", "one two three four"))
      result = diary.find_best_entry_for_reading_time(2, 1)
      expect(result).to eq best_entry
      end
    end


end

=end


 end
end
