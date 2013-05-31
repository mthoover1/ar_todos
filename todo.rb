require_relative 'config/application'

# puts "Put your application code in #{File.expand_path(__FILE__)}"

def all_todos
  Task.all.each do |task|
    puts "#{task.id}. #{task.name}"
  end
end

all_todos if ARGV[0] == 'list'
