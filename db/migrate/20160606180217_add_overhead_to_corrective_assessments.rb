class AddOverheadToCorrectiveAssessments < ActiveRecord::Migration
  def change
    add_column :corrective_assessments, :overhead, :string
  end
end
