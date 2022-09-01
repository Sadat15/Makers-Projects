require 'todo'

RSpec.describe Todo do
  it "constructs" do
    task_1 = Todo.new("Task 1")
  end

  it "returns the task as a string" do
    task_1 = Todo.new("Task 1")
    result = task_1.task
    expect(result).to eq "Task 1"
  end

  

end