require "todo_list"



RSpec.describe TodoList do
  context "Add nothing to the list" do
    it "returns an empty list of incomplete tasks" do
      todo_list = TodoList.new
      result = todo_list.incomplete
      expect(result).to eq []
    end
  end
  context "Add nothing to the list" do
    it "returns an empty list of complete tasks" do
      todo_list = TodoList.new
      result = todo_list.complete
      expect(result).to eq []
    end
  end
end
=begin
    context "with a todo task on the list"
      it "returns the task" do
        todo_list = TodoList.new
        result = todo_list.add("Meditate")
        expect(result.incomplete).to eq "Meditate"
      end
  end


  RSpec.describe TodoList do
    context "Initially" do
      it "is empty" do
        todo_list = TodoList.new
        expect(todo_list.incomplete).to eq []
      end
      it "has a best readable entry of nil" do
        diary = Diary.new
        expect(diary.find_best_entry_for_reading_time(2, 1)).to eq nil
      end
=end
