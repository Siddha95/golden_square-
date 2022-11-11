require "todo_tasks"

RSpec.describe TodoTask do

  context '#with no tasks in the list' do
  it "displays an empty list" do
   todo_task = TodoTask.new
   result = todo_task.list
   expect(result).to eq []
  end
 end

 context '#adding a task in the list' do
 it "displays the list with the task" do
  todo_task = TodoTask.new
  result = todo_task.add("Yoga")
  expect(result).to eq ["Yoga"]
  end
 end

 context '#delete a task from the list' do
 it "remove task from list" do
  todo_task = TodoTask.new
  todo_task.add("Yoga")
  result = todo_task.completed("Yoga")
  expect(todo_task.list).to eq []
  end
 end

 context 'try to complete a non-existent task' do
 it "fail" do
  todo_task = TodoTask.new
  todo_task.add("Yoga")
  expect{ todo_task.completed("jogging")}.to raise_error "No such task."
  end
 end
end
