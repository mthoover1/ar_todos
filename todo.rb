require_relative 'config/application'

# puts "Put your application code in #{File.expand_path(__FILE__)}"

def all_todos
  Task.all.each do |task|
    puts "#{task.id}. #{task.name}"
  end
end

def add_todo(task)
  Task.create(name: task)
end

def delete_todo(id)
  Task.destroy(id)
end

def complete_todo(id)
  Task.find(id).update_attribute(:completed_at, Time.now)
end 


all_todos if ARGV[0] == 'list'

if ARGV[0] == "add"
  task = ARGV[1..-1].join(" ")
  add_todo(task)
end 

delete_todo(ARGV[1]) if ARGV[0] == "delete"
complete_todo(ARGV[1]) if ARGV[0] == "complete"