class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer  :user_id 	
      t.boolean :subscribed

      t.timestamps null: false
    end
  end
end
