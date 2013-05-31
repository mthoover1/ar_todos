class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists each do |t|
      t.string :name

      t.timestamps
    end 
  end 
end 