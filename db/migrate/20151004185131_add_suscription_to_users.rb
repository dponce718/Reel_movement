class AddSuscriptionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :suscription, :boolean, null:false, default: false
  end
end
