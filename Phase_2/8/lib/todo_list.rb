# require './todo'

class TodoList
  def initialize
    @incomplete = []

  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @incomplete << todo

  end

  def incomplete
    # Returns all non-done todos
      @incomplete.delete_if{ |task| task.done? }
    
  end

  def complete
    # Returns all complete todos
    @incomplete.select{ |task| task.done? }

  end

  def give_up!
    # Marks all todos as complete
    @incomplete.each { |task| task.mark_done! }
  end
end

