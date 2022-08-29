require 'exercise'

RSpec.describe ToDoList do
  it "returns list of tasks" do
    task = ToDoList.new
    task.add("Wash the car")
    result = task.list
    expect(result).to eq ["Wash the car"]
  end
  
  it "returns list of tasks after completing 'Go to the gym' " do
    task = ToDoList.new
    task.add("Wash the car")
    task.add("Get a haircut")
    task.add("Do the grocery shopping")
    task.add("Water the plants")
    task.add("Go to the gym")
    task.complete("Go to the gym")
    result = task.list
    expect(result).to eq ["Wash the car", "Get a haircut", "Do the grocery shopping", "Water the plants"]
  end
  
end