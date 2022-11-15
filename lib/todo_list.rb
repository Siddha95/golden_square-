
class TodoList
  def initialize
    @todo_entries = []
  end

  def add(todo)
    @todo_entries << todo
    # todo is an instance of Todo
    # Returns nothing
  end

  def incomplete
    return @todo_entries
    # Returns all non-done todos
  end

  def complete
    # Returns all complete todos
  end

  def give_up!
    # Marks all todos as complete
  end
end
