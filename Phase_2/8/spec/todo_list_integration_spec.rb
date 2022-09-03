require 'todo'
require 'todo_list'

RSpec.describe "todo list integration" do
  
  it "returns all non-done todos" do
    list = TodoList.new
    task_1 = Todo.new("Task 1")
    list.add(task_1)
    expect(list.incomplete).to eq [task_1]
  end

  it "returns list of incomplete tasks" do
    list = TodoList.new
    task_1 = Todo.new("Task 1")
    task_2 = Todo.new("Task 2")
    list.add(task_1)
    list.add(task_2)
    expect(list.incomplete).to eq [task_1, task_2]
  end

  it "returns list of complete tasks" do
    list = TodoList.new
    task_1 = Todo.new("Task 1")
    task_2 = Todo.new("Task 2")
    list.add(task_1)
    list.add(task_2)
    task_1.mark_done!
    expect(list.complete).to eq [task_1]
  end

  it "marks all tasks as complete" do
    list = TodoList.new
    task_1 = Todo.new("Task 1")
    task_2 = Todo.new("Task 2")
    list.add(task_1)
    list.add(task_2)
    list.give_up!
    result = list.complete
    expect(result).to eq [task_1, task_2]
  end

end