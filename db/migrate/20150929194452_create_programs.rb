class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string   :title
      t.string   :level
      t.text	 :code		
      t.timestamps null: false
    end
  end
end
