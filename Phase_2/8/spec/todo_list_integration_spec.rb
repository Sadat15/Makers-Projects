require 'todo'
require 'todo_list'

RSpec.describe "todo list integration" do
  
  it "returns all non-done todos" do
    list = TodoList.new
    task_1 = Todo.new("Task 1")
    list.add(task_1)
    expect(list.incomplete).to eq [task_1]
  end

  
end