class CreateCorrectiveAssessments < ActiveRecord::Migration
  def change
    create_table :corrective_assessments do |t|
      t.integer  :user_id 
      t.boolean :sitting
      t.boolean :repetition
      t.string :recreation
      t.boolean :dress_shoes
      t.string :occupation

      t.timestamps null: false
    end
  end
end
