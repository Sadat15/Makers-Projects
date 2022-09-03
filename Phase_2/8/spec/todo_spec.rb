require 'todo'

RSpec.describe Todo do
  it "constructs" do
    task_1 = Todo.new("Task 1")
  end

  it "returns task as a string" do
    task_1 = Todo.new("Task 1") 
    result = task_1.task
    expect(result).to eq "Task 1"
  end 

  it "returns true when a task has been marked as done" do
    task_1 = Todo.new("Task 1")
    task_1.mark_done!
    result = task_1.done?
    expect(result).to eq true
  end

  it "returns true when a task has been marked as done" do
    task_1 = Todo.new("Task 1")
    result = task_1.done?
    expect(result).to eq false
  end


end