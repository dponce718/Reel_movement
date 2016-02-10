class CreateCorrectiveAssessments < ActiveRecord::Migration
  def change
    create_table :corrective_assessments do |t|
      t.integer  :user_id 
      t.string :sitting
      t.string :repetition
      t.string :recreation
      t.string :dress_shoes
      t.string :occupation

      t.timestamps null: false
    end
  end
end
