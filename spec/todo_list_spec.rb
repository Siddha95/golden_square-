require "todo_list"

  RSpec.describe TodoList do
    context "Initially" do
      it "is empty" do
        todo_list = TodoList.new
        expect(todo_list.incomplete).to eq []
      end
=begin
      it "has a best readable entry of nil" do
        diary = Diary.new
        expect(diary.find_best_entry_for_reading_time(2, 1)).to eq nil
      end
=end
    end
  end
