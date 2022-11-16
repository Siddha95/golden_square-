class Todo
  def initialize(task) # task is a string
    @task = task
    # ...
  end

  def task
    return @task
    # Returns the task as a string
  end

  def mark_done!
    @task = "#{@task} DONE"
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    return @task.include?("DONE")
    # Returns true if the task is done
    # Otherwise, false
  end
end
