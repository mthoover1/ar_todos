class CreateTagsTasks < ActiveRecord::Migration
  def change
    create_table :tag_clouds do |t|
      t.integer :task_id
      t.integer :tag_id
    end
  end
end





  # task = Task.new(name: 'Walk the dog')
  # tag = Tag.new(name: 'domestic')

  # task.tags << tag
  # task.tags # => <#Tag ...>
  # task.save

  # tag.tasks << task


