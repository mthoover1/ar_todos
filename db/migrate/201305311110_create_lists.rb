class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists each do |t|
      t.string :name
      t.date :completed_at
      t.integer :list_id
      
      t.timestamps
    end 
  end 
end 