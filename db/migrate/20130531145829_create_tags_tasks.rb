class CreateTagsTasks < ActiveRecord::Migration
  def change
    create_table :tag_clouds do |t|
      t.integer :task_id
      t.integer :tag_id
    end
  end
end
