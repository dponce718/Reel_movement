class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.integer  :user_id 
      t.integer :rhr
      t.integer :push_ups
      t.integer :wall_sits
      t.integer :planks
      t.integer :hamstring

      t.timestamps null: false
    end
  end
end
