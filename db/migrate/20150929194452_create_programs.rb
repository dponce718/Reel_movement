class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.integer  :user_id	
      t.string   :title
      t.string   :level
      t.text	 :code_one
      t.text   :code_two
      t.text   :code_three
      t.text   :code_four
      t.text   :code_five
	  t.string	 :frame	
    t.datetime   :start_time		
      t.timestamps null: false
    end
  end
end
