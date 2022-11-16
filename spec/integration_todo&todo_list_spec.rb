require 'todo'
require 'todo_list'

RSpec.describe 'integration' do
  context "when we add entries to the list" do
    it "returns it on the todo list" do
      todo_list = TodoList.new
      todo = Todo.new("my_task")
      todo_list.add(todo)
      expect(todo_list.incomplete).to eq [todo]
    end
  end
  context "when we add completed entry to the list" do
    it "returns the completed list" do
      todo_list = TodoList.new
      todo = Todo.new("my_task")
      todo.mark_done!
      todo_list.add(todo)
      expect(todo_list.complete).to eq [todo]
    end
  end
  context "give_up! marks all tasks as complete" do
    it "returns the completed list" do
      todo_list = TodoList.new
      todo1 = Todo.new("my_task1")
      todo2 = Todo.new("my_task2")
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo_list.give_up!
      expect(todo_list.complete).to eq [todo1, todo2]
    end
  end
  end




=begin

context "when we mark the todo as done" do
  it "returns it on the complete list" do
    todo_list = TodoList.new
    todo = Todo.new("my_task").mark_done!
    todo_list.add(todo)
    expect(todo_list.complete).to eq [todo]
  end
end


    describe "mark_done!" do
    context "With some todos in the incomplete list"
    it "Marks tasks as done and add them to complete list" do
      todo_list = TodoList.new
      todo = Todo.new("my_task")
      todo.mark_done!
      todo_list.add(todo)
      expect(todo_list.complete).to eq ("DONE : my_task")
    end
  end
end

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
