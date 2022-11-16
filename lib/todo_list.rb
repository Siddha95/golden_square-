
class TodoList
  def initialize
    @todos = []
  end

  def add(todo)

      @todos << todo
    # todo is an instance of Todo
    # Returns nothing
  end

  def incomplete
    incomplete = @todos.reject do |todo|
      todo.task.include?("DONE")
    end
    return incomplete
    # Returns all non-done todos
  end

  def complete
    complete = @todos.select do |todo|
      todo.task.include?("DONE")
    end
    return complete
    # Returns all complete todos
  end

  def give_up!
    @todos.each do |todo|
      todo.mark_done!
    end
    # Marks all todos as complete
  end
end
