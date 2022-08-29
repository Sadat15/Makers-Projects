class ToDoList
  def initialize
    @list_arr = []
  end
  
  def add(task)
    @list_arr << task
  end
  
  def list
    return @list_arr.each { |task| puts task }
  end
  
  def complete(done)
    @list_arr.delete_if { |task| task == done } 
  end
  
end